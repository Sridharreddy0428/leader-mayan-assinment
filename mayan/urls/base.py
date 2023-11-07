from django.urls import path, include

__all__ = ('urlpatterns',)

urlpatterns = []

urlpatterns = [
    path('new_app/', include('mayan.apps.new_app.urls')),
]
