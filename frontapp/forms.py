from django.forms import ModelForm
from django import forms
from myapp.models.user import User
from django.contrib.auth import authenticate


class UserForm(ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)
    confirm_password = forms.CharField(widget=forms.PasswordInput)
    email = forms.EmailField(max_length=50)
    word_attempt = forms.IntegerField(min_value=1, initial=7)

    class Meta:
        model = User
        fields = ['user_name', 'cell_phone', 'email', 'word_attempt', 'password']

    def clean(self):
        cleaned_data = super(UserForm, self).clean()
        
        password = cleaned_data.get("password")
        confirm_password = cleaned_data.get("confirm_password")

        # test if passwords match

        if password != confirm_password:
            raise forms.ValidationError(
                    "passwords do not match"
                    )

        # test if user already exists
        user_name = cleaned_data.get("user_name")
        if User.objects.filter(user_name=user_name).exists():
            raise forms.ValidationError("User name {} already exists".format(user_name))

class LoginForm(forms.Form):
    user_name = forms.CharField(label="User name", max_length=60)
    password = forms.CharField(label="Password", widget=forms.PasswordInput, max_length=50)

    def clean(self):
        user_name = self.cleaned_data.get('user_name')
        password = self.cleaned_data.get('password')
        user = User.objects.filter(user_name=user_name)
        if not user.exists() or user.get(user_name=user_name).password != password:
            raise forms.ValidationError("username or password wrong")
