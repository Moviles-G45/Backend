from tortoise.models import Model
from tortoise import fields
#from models.category import Category
#from models.user import User

class Transaction(Model):
    id = fields.IntField(pk=True)
    date = fields.DateField()
    amount = fields.DecimalField(max_digits=10, decimal_places=2)
    description = fields.TextField()

   # category = fields.ForeignKeyField("models.Category", related_name="transactions")
   # user = fields.ForeignKeyField("models.User", related_name="transactions")
