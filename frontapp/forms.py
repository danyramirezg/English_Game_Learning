from django.forms import ModelForm
from django import forms
from myapp.models.user import User


class UserForm(ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ['user_name', 'password', 'cell_phone', 'email', 'word_attemp']
