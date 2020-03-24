from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm 



class RegisterForm(UserCreationForm):
    email = forms.EmailField(max_length=50)
    word_attempt = forms.IntegerField(min_value=1, initial=7)
    cell_phone = forms.CharField(max_length=30, required=False)

    class Meta:
        model = User
        fields = ['username', 'cell_phone', 'email', 'word_attempt', 'password1', 'password2']


class LoginForm(forms.Form):
    username = forms.CharField(max_length=60)
    password = forms.CharField(widget=forms.PasswordInput, max_length=50)
