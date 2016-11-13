from django.contrib.auth.forms import AuthenticationForm 
from django import forms
from django.contrib.auth.models import User


class LoginForm(AuthenticationForm):
    username = forms.CharField(label="Username", max_length=30, 
                               widget=forms.TextInput(attrs={'class': 'form-control', 'name': 'username'}))
    password = forms.CharField(label="Password", max_length=30, 
                               widget=forms.PasswordInput(attrs={'class': 'form-control', 'name': 'password'}))

class UserForm(forms.ModelForm):
    password = forms.CharField(label="Password", max_length=30, 
                               widget=forms.PasswordInput(attrs={'class': 'form-control', 'name': 'password'}))
    username = forms.CharField(label="Username", max_length=30, 
                               widget=forms.TextInput(attrs={'class': 'form-control', 'name': 'username'}))
    email = forms.EmailField(label="Email",max_length=50,
								widget=forms.EmailInput(attrs={'class':'form-control', 'name':'email'}))
    first_name = forms.CharField(label="Firstname",max_length=50,
                widget=forms.TextInput(attrs={'class':'form-control', 'name':'first_name'}))
    last_name = forms.CharField(label="Surname",max_length=50,
                widget=forms.TextInput(attrs={'class':'form-control', 'name':'last_name'}))
    class Meta:
        model = User
        fields = ('first_name','last_name','username', 'email', 'password')

        

   