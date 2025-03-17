from tortoise.models import Model
from tortoise import fields

class Transaction(Model):
    id = fields.IntField(pk=True)
    date = fields.DateField()
    amount = fields.DecimalField(max_digits=10, decimal_places=2)
    description = fields.TextField()

    user = fields.ForeignKeyField('models.User', related_name='transactions')
    category = fields.ForeignKeyField('models.Category', related_name='transactions')
