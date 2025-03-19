from tortoise import fields
from tortoise.models import Model

class BudgetCategoryType(Model):
    id = fields.IntField(pk=True)
    percentage = fields.FloatField()

    category_type = fields.ForeignKeyField('models.CategoryType', related_name='budgets')
    budget = fields.ForeignKeyField('models.Budget', related_name='category_types')

    class Meta:
        unique_together = ('category_type', 'budget')
