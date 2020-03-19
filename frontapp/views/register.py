from frontapp.forms import RegisterForm
from django.contrib.sites.shortcuts import get_current_site
from django.utils.http import urlsafe_base64_encode
from django.utils.encoding import force_bytes
from django.template.loader import render_to_string
from django.shortcuts import render, redirect
from django.contrib.auth.tokens import default_token_generator as token_generator
from django.core.mail import send_mail


def register(request):
    if request.user.is_authenticated:
        return redirect('topic')
    form = RegisterForm(request.POST)
    if form.is_valid():
        user = form.save()
        user.refresh_from_db()
        user.profile.cell_phone = form.cleaned_data.get('cell_phone')
        user.profile.email = form.cleaned_data.get('email')
        user.profile.word_attempt = form.cleaned_data.get('word_attempt')
        user.is_active = False
        user.save()
        current_site = get_current_site(request)
        subject = 'Please Activate Your Account'
        uid = urlsafe_base64_encode(force_bytes(user.pk))
        message = render_to_string('activation_request.html', {
                'user': user,
                'domain': current_site.domain,
                'uid': uid,
                'token': token_generator.make_token(user),
            })
        send_mail(subject, message, 'EGL-admin@gmail.com', [user.profile.email], fail_silently=False)
        return redirect('activation_sent')
    return render(request, 'register.html', {'user': request.user.username})
