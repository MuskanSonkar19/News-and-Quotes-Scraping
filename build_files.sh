
#!/bin/bash
set -e

echo "BUILD START"

python3.9 -m pip install --upgrade pip
python3.9 -m pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput

mkdir -p staticfiles_build
cp -r staticfiles/. staticfiles_build/ 2>/dev/null || true

echo "BUILD END"
