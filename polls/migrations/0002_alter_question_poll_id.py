# Generated by Django 3.2.5 on 2021-07-27 22:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='question',
            name='poll_id',
            field=models.IntegerField(),
        ),
    ]