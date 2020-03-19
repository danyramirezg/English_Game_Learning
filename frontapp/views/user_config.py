from django.shortcuts import render
from django.contrib.auth.decorators import login_required


@login_required(login_url='login')
def user_config(request):
    project_id = request.GET.get('id', -1)
    return render(request, 'user_config.html', {'project_id': project_id})
