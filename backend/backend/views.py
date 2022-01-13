import json
from pathlib import Path
from django.http import JsonResponse, HttpResponse
from django.views import View


class UsersViewer(View):
    @staticmethod
    def get(request):

        for p in sorted(image_root.glob('**/*.png')):
            info += [{'title': str(p.stem), 'path': str(p)}]

        return HttpResponse(json.dumps(info, indent=True), status=200)



class UserViewer(View):
    @staticmethod
    def get(request):
        image_root = Path('images/')
        info = []
        for p in sorted(image_root.glob('**/*.png')):
            info += [{'title': str(p.stem), 'path': str(p)}]

        return HttpResponse(json.dumps(info, indent=True), status=200)
