from tortoise.models import Model
from tortoise import fields

class CategoryType(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=20, unique=True)  # earnings, savings, needs, wants
    description = fields.TextField()
