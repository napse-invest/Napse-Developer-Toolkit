from config.settings.base import *  # noqa: F403
from config.settings.base import env
from config.settings.modules import *  # noqa: F403

DEBUG = True
IS_LOCAL = True

INTERNAL_IPS = ["127.0.0.1", "10.0.2.2"]
if env("USE_DOCKER") == "yes":
    import socket

    hostname, _, ips = socket.gethostbyname_ex(socket.gethostname())
    INTERNAL_IPS += [".".join(ip.split(".")[:-1] + ["1"]) for ip in ips]
