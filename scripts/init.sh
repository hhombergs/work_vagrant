#!/bin/bash

CURDIR=`pwd`
echo "Looking for pre-requisites..."

REQUIRED_CMDS="composer git npm virtualbox vagrant"

for cmd in $REQUIRED_CMDS; do
    printf "Looking for '$cmd'... "
    command -v $cmd >/dev/null 2>&1 || { echo >&2 "I require $cmd but it's not installed. Aborting."; exit 1; }
    echo "found!"
done

echo "Fetching codebase..."
git clone https://github.com/hhombergs/work_backend.git
git clone https://github.com/hhombergs/work_frontend.git

echo "Installing dependencies..."
cd ./work_backend
composer install
cd ..
cd ./work_frontend
npm install
./node_modules/.bin/grunt clean
npm run build
