from tortoise.models import Model
from tortoise import fields

class Notification(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=100)
    content = fields.TextField()
    date = fields.DateField()

    user = fields.ForeignKeyField('models.User', related_name='notifications')

