from mayan.apps.sources.source_backends.base import SourceBackend

from ..source_backends.mixins import SourceBackendMixinCompressed

from .source_backend_actions import SourceBackendActionDocumentUploadBasicCompressed


class SourceBackendTestCompressed(
    SourceBackendMixinCompressed, SourceBackend
):
    action_class_list = (
        SourceBackendActionDocumentUploadBasicCompressed,
    )
    label = 'Test source backend compressed'

    def get_view_context(self, context, request):
        return {
            'subtemplates_list': [
                {
                    'context': {
                        'forms': context['forms'],
                        'is_multipart': True
                    },
                    'name': 'appearance/generic_multiform_subtemplate.html'
                }
            ]
        }
