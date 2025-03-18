from tortoise.models import Model
from tortoise import fields
from app.models.user import User

class Category(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=20)  # earnings, savings, needs, wants
    user = fields.ForeignKeyField("models.User", related_name="categories")
    amount = fields.DecimalField(max_digits=10, decimal_places=2, null=True)  # Solo earnings
    percentage = fields.FloatField(null=True)  # Solo para savings, needs, wants
    month = fields.IntField()
    year = fields.IntField()
    

    class Meta:
        unique_together = ("user", "name", "month", "year")  # Evita duplicados
