from tortoise.models import Model
from tortoise import fields

class SubCategory(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=100)
    monthly_budget = fields.DecimalField(max_digits=10, decimal_places=2)

    category = fields.ForeignKeyField("models.Category", related_name="subcategories")
