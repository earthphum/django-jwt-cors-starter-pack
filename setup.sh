#!/bin/bash

echo "Setup JWT + CORS Starter in dev enviroment"

#Requirement -> pyenv python 3.10.18
pyenv local 3.10.18
python -m venv .venv
source .venv/bin/activate

# Install Dependencies
pip install -r requirement.txt

# del .git
rm -rf .git
#You can initial git with yourselft by run bash: git init

# RUN migrate and makemigrations
python manage.py makemigrations
python manage.py migrate

# Create SUPER USER
# You manual OK NA > <
python manage.py createsuperuser

# LET's STARTING
python manage.py runserver
