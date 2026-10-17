
#!/bin/bash
set -e

echo "BUILD START"

python -m venv .venv
.venv/bin/python -m pip install --upgrade pip
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python manage.py collectstatic --noinput

echo "BUILD END"
