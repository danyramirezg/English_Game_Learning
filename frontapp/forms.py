from django.forms import ModelForm
from django import forms
from myapp.models.user import User_Profile
from django.contrib.auth import authenticate
<<<<<<< HEAD
from myapp.models.user import Custom_User


=======
from django.contrib.auth.models import User
"""
>>>>>>> 30d63991e03f1775520a1c2127e3384b238be859
class UserForm(ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)
    confirm_password = forms.CharField(widget=forms.PasswordInput)
    email = forms.EmailField(max_length=50)
    word_attempt = forms.IntegerField(min_value=1, initial=7)

    class Meta:
<<<<<<< HEAD
        model = User
        fields = ['user_name', 'cell_phone', 'email', 'word_attempt',
                  'password']
=======
        model = User_Profile
        fields = ['username', 'cell_phone', 'email', 'word_attempt', 'password']
>>>>>>> 30d63991e03f1775520a1c2127e3384b238be859

    def clean(self):
        cleaned_data = super(UserForm, self).clean()

        password = cleaned_data.get("password")
        confirm_password = cleaned_data.get("confirm_password")

        # test if passwords match

        if password != confirm_password:
            raise forms.ValidationError(
<<<<<<< HEAD
                "passwords do not match"
            )


=======
                    "passwords do not match"
                    )
"""
>>>>>>> 30d63991e03f1775520a1c2127e3384b238be859
class LoginForm(forms.Form):
    user_name = forms.CharField(label="User name", max_length=60)
    password = forms.CharField(label="Password", widget=forms.PasswordInput,
                               max_length=50)

    def clean(self):
        user_name = self.cleaned_data.get('username')
        password = self.cleaned_data.get('password')
<<<<<<< HEAD
        user = User.objects.filter(user_name=user_name)
        if not user.exists() or user.get(
                user_name=user_name).password != password:
            raise forms.ValidationError("username or password wrong")


class Custom_User_Form(forms.ModelForm):
    class Meta:
        model = Custom_User
        fields = ('cell_phone', 'word_attempt', 'created_at',
                  'update_at')
=======
        user = User_Profile.objects.filter(user_name=user_name)
        if not user.exists() or user.get(user_name=user_name).password != password:
            raise forms.ValidationError("username or password wrong")


>>>>>>> 30d63991e03f1775520a1c2127e3384b238be859
