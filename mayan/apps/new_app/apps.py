from django.apps import AppConfig
from mayan.apps.common.apps import MayanAppConfig

class New_appConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'new_app'