from typing import cast, Self
import sys
import subprocess
from pathlib import Path
from enum import Enum
from unittest import case
import shutil
import copy

from valvepcf.unloader import unload_pcf, save_pcf
from valvepcf import Pcf, PcfSystemNode, PcfOperatorNode, PcfAttribute, PcfNode

from utils.l4d2utils import extract_folder_from_l4d2
from utils.miscutils import debug_log, DebugLogLevel, CCs


class OperatorPatcherOperation(Enum):
    REPLACE = 0
    REMOVE = 1
    REPLACE_AND_ADD = 2


class OperatorPatcherType(Enum):
    RENDERER = 0
    OPERATOR = 1
    INITIALIZER = 2
    EMITTER = 3
    # CHILD = 4
    FORCE = 5
    CONSTRAINT = 6

    def get_attr_str(self):
        match self:
            case OperatorPatcherType.RENDERER:
                return "renderers"
            case OperatorPatcherType.OPERATOR:
                return "operators"
            case OperatorPatcherType.INITIALIZER:
                return "initializers"
            case OperatorPatcherType.EMITTER:
                return "emitters"
            # case OperatorPatcherType.CHILD:
            #     return "children"
            case OperatorPatcherType.FORCE:
                return "forces"
            case OperatorPatcherType.CONSTRAINT:
                return "constraints"
            case _:
                raise Exception(f"Unknown operator: {self}")


# noinspection PyProtectedMember
class PcfFileSelector:
    filename_search_keywords: list[str] = []
    filename_exclude_keywords: list[str] = []
    do_filename_search_keywords: bool = False
    do_filename_exclude_keywords: bool = False

    def __init__(self,
                 filename_search_keywords: list[str] | None = None,
                 filename_exclude_keywords: list[str] | None = None) -> None:
        if filename_search_keywords is not None:
            self.filename_search_keywords = filename_search_keywords
        if filename_exclude_keywords is not None:
            self.filename_exclude_keywords = filename_exclude_keywords

        if len(self.filename_search_keywords) > 0:
            self.do_filename_search_keywords = True
        if len(self.filename_exclude_keywords) > 0:
            self.do_filename_exclude_keywords = True

    def does_filename_match(self, filename: str) -> bool:
        if if_list_keyword_in_name(filename, self.filename_exclude_keywords)[0]:
            return False
        if if_list_keyword_in_name(filename, self.filename_search_keywords)[0] or \
                not self.do_filename_search_keywords:
            return True
        return False


# noinspection PyProtectedMember
class PcfSystemSelector:
    particle_system_search_keywords: list[str] = []
    particle_system_exclude_keywords: list[str] = []
    renderer_search_keywords: list[str] = []
    do_system_search_keywords: bool = False
    do_system_exclude_keywords: bool = False
    do_renderer_search_keywords: bool = False

    def __init__(self,
                 particle_system_search_keywords: list[str] | None = None,
                 particle_system_exclude_keywords: list[str] | None = None,
                 renderer_search_keywords: list[str] | None = None) -> None:
        if particle_system_search_keywords is not None:
            self.particle_system_search_keywords = particle_system_search_keywords
        if particle_system_exclude_keywords is not None:
            self.particle_system_exclude_keywords = particle_system_exclude_keywords
        if renderer_search_keywords is not None:
            self.renderer_search_keywords = renderer_search_keywords

        if len(self.particle_system_search_keywords) > 0:
            self.do_system_search_keywords = True
        if len(self.particle_system_exclude_keywords) > 0:
            self.do_system_exclude_keywords = True
        if len(self.renderer_search_keywords) > 0:
            self.do_renderer_search_keywords = True

    def does_system_name_match(self, particle_system: PcfSystemNode) -> bool | None:
        key, _ = if_list_keyword_in_name(particle_system._name, self.particle_system_exclude_keywords)
        if key is not None:
            debug_log(f"{particle_system._name} contains keyword {key}, included in exclude_keywords\n"
                      f"exclude_keywords: {self.particle_system_exclude_keywords}",
                      DebugLogLevel.VERBOSE)
            return False
        if if_list_keyword_in_name(particle_system._name, self.particle_system_search_keywords)[0]:
            return True
        return None

    def does_system_match(self, particle_system: PcfSystemNode) -> bool:
        name_match = self.does_system_name_match(particle_system)
        if isinstance(name_match, bool):
            return name_match
        if not self.do_renderer_search_keywords and not self.do_system_search_keywords:
            return True

        renderer_type, _, _ = if_list_keyword_in_list_name(particle_system.renderers,
                                                           self.renderer_search_keywords, attr_search="_name")
        if not renderer_type:
            debug_log(
                f"skipping: {particle_system._name}\n"
                f"reason: wrong renderer_type, {particle_system.renderers}\n", DebugLogLevel.VERBOSE)
            return False

        for atty in particle_system.attributes:
            if atty._name == "material":
                if not if_list_keyword_in_name(atty._data, self.particle_system_search_keywords,
                                               exclude_keywords=self.particle_system_exclude_keywords)[0]:
                    debug_log(
                        f"skipping: {particle_system._name}\n"
                        f"reason: name is wrong and material name is wrong, {atty._data}\n", DebugLogLevel.VERBOSE)
                    return False
                return True
        return False


# noinspection PyProtectedMember,PyTypeHints
class OperatorPatcher:
    ename: str
    # _ename: str | None = None
    etype: str
    _etype: str | None = None
    edesc: str
    _edesc: str | None = None
    attrs: list[PcfAttribute]
    _attrs: list[PcfAttribute] | None = None
    operation: OperatorPatcherOperation
    # this corresponds to the properties things of a particle system
    operation_type: OperatorPatcherType
    _node: PcfOperatorNode | None = None
    _node_attr_dict: dict[str, PcfAttribute] | None = None

    def __init__(self, operation: OperatorPatcherOperation, operation_type: OperatorPatcherType,
                 ename: str, etype: str | None = None, edesc: str | None = None,
                 attrs: list[PcfAttribute] | None = None) -> None:
        self.operation = operation
        self.operation_type = operation_type
        self.ename = ename
        self._set_evalues(etype, edesc, attrs)
        if self._is_anything_unset():
            if self.operation != OperatorPatcherOperation.REPLACE and self.operation != OperatorPatcherOperation.REMOVE:
                raise Exception("ename, etype, edesc, and attrs cannot be None when operation is not REPLACE or REMOVE")
            return
        self._set_node_attribute()

    def __repr__(self):
        return (f"<{self.__class__.__module__}.{self.__class__.__name__} object at {hex(id(self))}>\n"
                f"  ename: {self.ename}\n"
                f"  _etype: {self._etype}\n"
                f"  _edesc: {self._edesc}\n"
                f"  _attrs: {self._attrs}\n"
                f"  operation: {self.operation}\n"
                f"  operation_type: {self.operation_type}\n"
                f"  _node: {self._node}")

    def _set_evalues(self, etype: str | None = None, edesc: str | None = None,
                     attrs: list[PcfAttribute] | None = None) -> None:
        if etype is not None:
            self.etype = etype
            self._etype = etype
        if edesc is not None:
            self.edesc = edesc
            self._edesc = edesc
        if attrs is not None:
            self.attrs = attrs
            self._attrs = attrs

    def _is_anything_unset(self):
        # if self._ename is None:
        #     return True
        if self._etype is None:
            return True
        if self._edesc is None:
            return True
        if self._attrs is None:
            return True
        return False

    def _set_node_attribute(self):
        self._node = PcfOperatorNode(self.ename, self.etype, self.edesc)
        self._node.attributes = self.attrs
        self._node_attr_dict = self.get_attr_dict()

    @staticmethod
    def _from_replacer_remover(ename: str,
                               operation_type: OperatorPatcherType,
                               operation: OperatorPatcherOperation,
                               attrs: list[PcfAttribute] | PcfAttribute | None = None) -> Self:
        if operation != OperatorPatcherOperation.REPLACE and operation != OperatorPatcherOperation.REMOVE:
            raise Exception(f"operation must be REPLACE or REMOVE")
        return OperatorPatcher(operation, operation_type, ename=ename, attrs=attrs)

    @staticmethod
    def _from_replacers_removers_(enames: list[str] | str,
                                  operation_type: OperatorPatcherType,
                                  operation: OperatorPatcherOperation,
                                  attrs: list[PcfAttribute] | PcfAttribute | None = None) -> list[Self] | Self:
        if len(enames) == 1:
            enames = enames[0]
        if not isinstance(enames, list):
            return OperatorPatcher._from_replacer_remover(enames, operation_type, operation, attrs)
        r_list: list[OperatorPatcher] = []
        for ename in enames:
            r_list.append(OperatorPatcher._from_replacer_remover(ename, operation_type, operation, attrs))
        return r_list

    @staticmethod
    def replacers_from_ename_list(
            enames: list[str] | str,
            operation_type: OperatorPatcherType,
            attrs: list[PcfAttribute] | PcfAttribute | None = None) -> list[Self] | Self:
        op = OperatorPatcher._from_replacers_removers_(
            enames, operation_type, OperatorPatcherOperation.REPLACE, attrs)
        return op

    @staticmethod
    def removers_from_ename_list(enames: list[str] | str,
                                 operation_type: OperatorPatcherType) -> list[Self] | Self:
        return OperatorPatcher._from_replacers_removers_(enames, operation_type, OperatorPatcherOperation.REMOVE)

    def get_correct_pcf_list(self, pcf: Pcf, sys_i: int) -> list[PcfOperatorNode]:
        # this function cannot return systems.children
        # return pcf.systems[sys_i].__getattribute__(self.operation_type.get_attr_str())
        return getattr(pcf.systems[sys_i], self.operation_type.get_attr_str())

    def set_correct_pcf_list(self, pcf: Pcf, sys_i: int, new_val: list[PcfOperatorNode]) -> Pcf:
        setattr(pcf.systems[sys_i], self.operation_type.get_attr_str(), new_val)
        return pcf

    def get_attr_dict(self) -> dict[str, PcfAttribute]:
        attr_dict: dict[str, PcfAttribute] = {}
        p_str = ""
        for atty in self._node.attributes:
            attr_dict[atty._name] = atty
            end = ",\n"
            p_str += f"{atty._name}: {{\n{attribute_str(atty, end, 2)}}}\n"
        return attr_dict

    def set_proper_evalues(self, node: PcfOperatorNode):
        set_kwargs = {}
        if self._etype is None:
            set_kwargs["etype"] = node._type
        if self._edesc is None:
            set_kwargs["edesc"] = node._desc
        if self._attrs is None:
            set_kwargs["attrs"] = node.attributes

        self._set_evalues(**set_kwargs)
        self._set_node_attribute()

    def do_patch(self, pcf: Pcf, sys_i: int) -> tuple[Pcf, int]:
        the_list = self.get_correct_pcf_list(pcf, sys_i)
        thingy, _, the_op_i = if_list_keyword_in_list_name(the_list, [self.ename], attr_search="_name")

        if thingy is not None:
            self.set_proper_evalues(thingy)
            print_node_attributes(thingy)

        did_something = 0

        def do_replacement(the_pcf: Pcf, correct_pcf_list: list[PcfOperatorNode], op_i: int) -> tuple[Pcf, int]:
            new_op_attrs = []
            attr_keys_added = []
            _did_something = 0

            for atty in correct_pcf_list[op_i].attributes:

                if atty._name in self._node_attr_dict.keys():
                    attr_keys_added.append(atty._name)
                    new_op_attrs.append(self._node_attr_dict[atty._name])
                    _did_something += True
                    continue
                new_op_attrs.append(atty)
            for key in self._node_attr_dict.keys():
                if key not in attr_keys_added:
                    new_op_attrs.append(self._node_attr_dict[key])
                    _did_something += True
            correct_pcf_list[op_i].attributes = new_op_attrs
            return self.set_correct_pcf_list(the_pcf, sys_i, correct_pcf_list), _did_something

        match self.operation:
            case OperatorPatcherOperation.REPLACE:
                if thingy is not None:
                    pcf, did_something = do_replacement(pcf, the_list, the_op_i)
            case OperatorPatcherOperation.REMOVE:
                if thingy is not None:
                    did_something += True
                    del the_list[the_op_i]
                    pcf = self.set_correct_pcf_list(pcf, sys_i, the_list)
            case OperatorPatcherOperation.REPLACE_AND_ADD:
                if not thingy:
                    did_something += True
                    the_list.append(self._node)
                    pcf = self.set_correct_pcf_list(pcf, sys_i, the_list)
                else:
                    pcf, did_something = do_replacement(pcf, the_list, the_op_i)
            case _:
                raise Exception(f"Unknown operator: {self.operation}")

        return pcf, did_something


class PcfEditor:
    patches: list[OperatorPatcher]
    system_remover: PcfSystemSelector = PcfSystemSelector()
    system_selector: PcfSystemSelector = PcfSystemSelector()
    file_selector: PcfFileSelector = PcfFileSelector()

    def __init__(self, patches: list[OperatorPatcher] | OperatorPatcher,
                 system_selector: PcfSystemSelector | None = None,
                 file_selector: PcfFileSelector | None = None,
                 system_remover: PcfSystemSelector | None = None) -> None:
        if not isinstance(patches, list):
            self.patches = [patches]
        else:
            self.patches = patches
        if system_selector is not None:
            self.system_selector = system_selector
        if file_selector is not None:
            self.file_selector = file_selector
        if system_remover is not None:
            self.system_remover = system_remover

    # this patches a single pcf
    # noinspection PyProtectedMember
    def patch_pcf(self, pcf: Pcf) -> tuple[Pcf, bool]:
        edits_made = 0
        pcf_filename = Path(pcf.source_path).name

        if self.system_remover is not None:
            new_systems = copy.copy(pcf.systems)
            for sys_i, particle_system in reversed(list(enumerate(pcf.systems))):
                assert isinstance(particle_system, PcfSystemNode)
                if not self.system_remover.does_system_match(particle_system):
                    continue
                debug_log(f"deleting system {particle_system._name} from {pcf_filename}, matches system_remover, sys_i={sys_i}", DebugLogLevel.HUMAN)
                del new_systems[sys_i]
            pcf.systems = new_systems
        

        for sys_i, particle_system in enumerate(pcf.systems):
            system_edit = 0
            assert isinstance(particle_system, PcfSystemNode)
            # print(particle_system._name)
            if not self.system_selector.does_system_match(particle_system):
                debug_log(
                    f"skipping: {particle_system._name}\n"
                    f"reason: does_system_match() return false, {particle_system.renderers}\n", DebugLogLevel.VERBOSE)
                continue
            for patch in self.patches:
                pcf, _made_edit = patch.do_patch(pcf, sys_i)
                edits_made += _made_edit
                system_edit += _made_edit
            if system_edit > 0:
                debug_log(f"{pcf_filename}: {particle_system._name}: {system_edit} edits made", DebugLogLevel.VERBOSE)
        if edits_made > 0:
            debug_log(f"", DebugLogLevel.VERBOSE)
        return pcf, edits_made > 0

    # this patches a directory of pcf files
    def patch_particles(self, output_dir: Path, extract_folder: Path = Path("./extractparticles"), override_particles_folder: Path | None = None) \
            -> None:
        # extract_folder = Path("./extractparticles")
        if extract_folder.exists():
            subprocess.run(["rm", "-r", extract_folder])
        if output_dir.exists() and len(list(output_dir.iterdir())) != 0:
            raise Exception(f"Output directory {output_dir} is not empty!")
            # subprocess.run(["rm", "-r", edited_folder])
        output_dir.mkdir(parents=True, exist_ok=True)
        folder_to_extract = "/particles/"
        suffixes_to_extract = [".pcf"]
        extract_folder_from_l4d2(extract_folder, folder_to_extract, suffixes_to_extract)
        if override_particles_folder is not None:
            if not override_particles_folder.exists():
                raise FileNotFoundError(f"override_particles_folder ({override_particles_folder}) doesnt exist!")
            debug_log("copying override particles...", DebugLogLevel.HUMAN)
            shutil.copytree(override_particles_folder, extract_folder, dirs_exist_ok=True)

        file: Path
        for file in extract_folder.iterdir():
            if not self.file_selector.does_filename_match(file.name):
                continue
            pcf = Pcf(str(file))
            new_pcf, made_edit = self.patch_pcf(pcf)
            if not made_edit:
                debug_log(f"{CCs.WARNING}none  in {file.name}", DebugLogLevel.DEBUG)
                continue
            debug_log(f"found in {file.name}", DebugLogLevel.DEBUG)
            save_pcf(pcf, output_dir.joinpath(file.name))


def if_list_keyword_in_name(name: str, keyword_list: list[str], exclude_keywords: list[str] | None = None,
                            attr_search: str | None = None) -> tuple[str, int] | tuple[None, None]:
    if attr_search is not None:
        search_name = name.__getattribute__(attr_search)
    else:
        search_name = name
    if exclude_keywords is not None and if_list_keyword_in_name(search_name, exclude_keywords)[0]:
        return None, None
    for i, keyword in enumerate(keyword_list):
        if keyword.lower() in search_name.lower():
            return keyword, i
    return None, None


def if_list_keyword_in_list_name(
        names_search: list, keyword_list: list[str], exclude_keywords: list[str] | None = None,
        attr_search: str | None = None) -> tuple[str, str, int] | tuple[None, None, None]:
    for i, name in enumerate(names_search):
        keyword, _ = if_list_keyword_in_name(name, keyword_list, exclude_keywords=exclude_keywords,
                                             attr_search=attr_search)
        if keyword:
            return name, keyword, i
    return None, None, None


def remove_element_from_list(
        elements: list, keyword_list: list[str], exclude_keywords: list[str] | None = None,
        attr_search: str | None = None) -> list:
    new_elements = []
    for name in elements:
        if if_list_keyword_in_name(name, keyword_list, exclude_keywords=exclude_keywords, attr_search=attr_search)[0]:
            continue
        new_elements.append(name)
    return new_elements


def get_particles_manifest_for_folder(folder: Path) -> str:
    particle_manifest = ("particles_manifest\n"
                         "{\n")
    for file in folder.iterdir():
        particle_manifest += f"\t\"file\"\t\t\"particles/{file.name}\"\n"
    particle_manifest += "}\n"
    return particle_manifest


# noinspection PyProtectedMember
def attribute_str(attr: PcfAttribute, end="\n", indent_size=0, i: str | int = "") -> str:
    indent = " " * indent_size
    r_str = (f"{indent}attr{i}._name: {attr._name}{end}"
             f"{indent}attr{i}._type: {attr._type}{end}"
             f"{indent}attr{i}._data: {attr._data}{end}")
    return r_str


def attributes_str(attrs: list[PcfAttribute], end="\n", indent_size=2) -> str:
    r_str = ""
    for i, attr in enumerate(attrs):
        r_str += attribute_str(attr, end, indent_size, i)
    return r_str


# noinspection PyProtectedMember
def node_attributes_str(node: PcfNode, end="\n", indent_size=2) -> str:
    r_str = (f"{node}{end}"
             f"node._name: {node._name}{end}"
             f"node._type: {node._type}{end}"
             f"node._desc: {node._desc}{end}"
             f"node.attributes: {end}"
             f"{attributes_str(node.attributes, end, indent_size + 2)}")
    return r_str


def print_node_attributes(node: PcfNode, end="\n", indent_size=2) -> None:
    debug_log(node_attributes_str(node, end=end, indent_size=indent_size), DebugLogLevel.VERBOSE)
