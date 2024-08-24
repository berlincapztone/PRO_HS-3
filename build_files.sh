#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Collecting static files..."
python3 manage.py collectstatic --noinput

echo "Building files for deployment..."
# Ensure any other necessary build steps are done here

# Move the static files to the correct directory for deployment
mkdir -p staticfiles_build
cp -r static/* staticfiles_build/
