from tortoise.models import Model
from tortoise import fields

class Category(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=100)
    budget = fields.DecimalField(max_digits=10, decimal_places=2)
    month = fields.IntField()

    #transactions: fields.ReverseRelation["Transaction"]
    #subcategories: fields.ReverseRelation["SubCategory"]
