from tortoise.models import Model
from tortoise import fields

class User(Model):
    id = fields.IntField(pk=True)
    full_name = fields.CharField(max_length=100)
    user_name = fields.CharField(max_length=50, unique=True)
    email = fields.CharField(max_length=100, unique=True)
    date_of_birth = fields.DateField(null=True)
    phone_number = fields.CharField(max_length=20, null=True)

