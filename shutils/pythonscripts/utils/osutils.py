from enum import Enum
import sys

from utils.miscutils import *


class OSTypeEnum(Enum):
    unknown = -1
    linux = 0
    windows = 1
    mac = 2

    @classmethod
    def _missing_(cls, os_str):
        if not isinstance(os_str, str):
            return super()._missing_(os_str)
        match os_str:
            case "linux":  # dont need linux2 or linux3 bcs match is only supported in 3.10+
                return cls.linux
            case "win32" | "cygwin":
                return cls.windows
            case "darwin":
                return cls.mac
            case _:
                return cls.unknown


OSType = OSTypeEnum(sys.platform)

if OSType == OSType.windows:
    debug_log("detected windows os")
    import winreg

    __hkeys = {
        "HKEY_USERS": winreg.HKEY_USERS,
        "HKEY_CURRENT_USER": winreg.HKEY_CURRENT_USER,
        "HKEY_LOCAL_MACHINE": winreg.HKEY_LOCAL_MACHINE,
        "HKEY_CLASSES_ROOT": winreg.HKEY_CLASSES_ROOT
    }

    def get_registry_key(path: str):
        path = path.n.replace("\\", "/")
        _psplit = path.split("/")
        keyname = _psplit[-1]
        hkeyname = _psplit[0]
        hkey = __hkeys[hkeyname]
        keypath = "\\".join(_psplit[1:-1])
        regkey = winreg.OpenKey(hkey, keypath)
        regvalue = winreg.QueryValueEx(regkey, keyname)
        regkey.Close()
        return regvalue[0]


