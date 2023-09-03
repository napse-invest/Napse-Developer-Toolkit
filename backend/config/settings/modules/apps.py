"""Installed apps."""

DJANGO_APPS = [
    # "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "corsheaders",
]


THIRD_PARTY_APPS = [
    "health_check",
    # Napse
    "django_napse.core",
    "django_napse.simulations",
    # Required
    "django_celery_beat",
]

LOCAL_APPS = [
    "custom",
    "cli",
]

INSTALLED_APPS = DJANGO_APPS + THIRD_PARTY_APPS + LOCAL_APPS
