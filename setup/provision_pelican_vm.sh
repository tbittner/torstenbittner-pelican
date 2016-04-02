#!/bin/bash

echo "Setting up VM"

# Install Jupyter
sudo apt-get install -y build-essential python-pip python-dev libmysqld-dev freetype* pkg-config libpq-dev
sudo pip install --upgrade pip
sudo pip install pandas pyzmq jinja2 tornado jsonschema jupyter sqlalchemy MySql_python matplotlib psycopg2 redshift-sqlalchemy findspark

# Install Pelican
sudo pip install pelican
echo "VM setup complete!"
