from django.conf import settings
from django.shortcuts import render

# index页面
def index(request):
    client_b_url = settings.CLIENT_B_URL
    cas_server_url = settings.CAS_SERVER_URL
    return render(request, 'index.html',context={'client_b_url':client_b_url,"cas_server_url":cas_server_url})
    