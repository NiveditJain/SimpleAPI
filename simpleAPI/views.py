from django.http import JsonResponse
from dotenv import load_dotenv
import os


def index(request):

    load_dotenv()

    data = {
        "message": "All working good from v0.0.2",
        "envName": os.environ["NAME_USER_DJANGO_APP"]
    }

    return JsonResponse(data)
