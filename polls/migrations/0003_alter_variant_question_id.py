# Generated by Django 3.2.5 on 2021-07-28 00:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0002_alter_question_poll_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='variant',
            name='question_id',
            field=models.IntegerField(),
        ),
    ]
