#!/bin/sh
set -e

# Wait-for-db logic could be added here if needed (simple loop, or use wait-for-it)
# Apply migrations (non-interactive)
python /app/manage.py migrate --noinput

# You can also collectstatic here if you use it:
# python /app/manage.py collectstatic --noinput

# Exec the main container command (gunicorn ...)
exec "$@"
