# Generated by Django 3.2.5 on 2021-07-28 00:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0003_alter_variant_question_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='variant',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]