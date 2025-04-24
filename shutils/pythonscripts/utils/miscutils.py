from enum import Enum


class CCs:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'


class DebugLogLevel(Enum):
    NONE = -1
    HUMAN = 0
    DEBUG = 1
    VERBOSE = 2
    ERROR = 3

    def do_msg_edit(self, msg: str) -> str:
        match self:
            case self.NONE:
                return msg
            case self.HUMAN:
                return f"{CCs.OKCYAN}{msg}{CCs.ENDC}"
            case self.DEBUG:
                return f"{CCs.WARNING}[DEBUG] {msg}{CCs.ENDC}"
            case self.VERBOSE:
                return f"{CCs.OKGREEN}[VERBOSE] {msg}{CCs.ENDC}"
            case self.ERROR:
                return f"{CCs.FAIL}[ERROR] {msg}{CCs.ENDC}"
            case _:
                return msg


class Singleton(object):
    _instance = None

    def __new__(cls, *args, **kwargs):
        if not isinstance(cls._instance, cls):
            cls._instance = object.__new__(cls)
        return cls._instance


class LogLevelSingleton(Singleton):
    log_level: DebugLogLevel

    def __init__(self, log_level: DebugLogLevel):
        self.log_level = log_level


DEBUG_LOG_LEVEL = LogLevelSingleton(DebugLogLevel.VERBOSE)


def debug_log(msg: str, level: DebugLogLevel = DEBUG_LOG_LEVEL.log_level) -> None:
    if level.value <= DEBUG_LOG_LEVEL.log_level.value:
        print(level.do_msg_edit(msg))


def set_debug_log_level(level: DebugLogLevel) -> None:
    DEBUG_LOG_LEVEL.log_level = level
