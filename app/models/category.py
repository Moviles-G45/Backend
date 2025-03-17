from tortoise.models import Model
from tortoise import fields

class Category(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=100)
    monthtly_budget = fields.DecimalField(max_digits=10, decimal_places=2)
