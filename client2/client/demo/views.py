from django.shortcuts import render

# index页面
def index(request):
    return render(request, 'index.html')
    