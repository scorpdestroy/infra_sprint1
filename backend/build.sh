#!/usr/bin/env bash

# Создаём виртуальное окружение
python -m venv venv
source venv/bin/activate

# Устанавливаем зависимости
pip install --upgrade pip
pip install -r requirements.txt

# Собираем статику
python manage.py collectstatic --noinput

# Применяем миграции
python manage.py migrate