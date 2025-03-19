from tortoise.models import Model
from tortoise import fields

class Category(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=100, unique=True)
    description = fields.TextField()

    category_type = fields.ForeignKeyField("models.CategoryType", related_name="categories")
