from tortoise.models import Model
from tortoise import fields


class Budget(Model):
    id = fields.IntField(pk=True)
    month = fields.IntField()
    year = fields.IntField()

    user = fields.ForeignKeyField('models.User', related_name='budgets')

    class Meta:
        unique_together = ('month', 'year', 'user')
