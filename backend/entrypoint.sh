#!/bin/sh
set -e

echo "⏳ Ожидание запуска PostgreSQL на $DB_HOST:$DB_PORT..."

while ! nc -z "$DB_HOST" "$DB_PORT"; do
  sleep 1
done

echo "✅ PostgreSQL доступна"

echo "📦 Применение миграций..."
python manage.py migrate --noinput

echo "🎨 Получение статичных файлов..."
python manage.py collectstatic --noinput

echo "🚀 Запуск бэкенда..."
exec gunicorn kittygram_backend.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --timeout 120
