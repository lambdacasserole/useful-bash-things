#!/bin/bash

# Composer needs a HOME variable to function.
export HOME="/var/www"

# Directory path of this script.
CUR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Change to this directory.
cd "$CUR_PATH"

# Store overall result in variable.
x=0

# Pull from repository.
git pull
let x=$x+$?

# Install Composer packages.
if [ -e ./composer.json ]
then
    if [ ! -e ./composer.phar ]
    then
        wget https://getcomposer.org/composer.phar
    fi
    php composer.phar install
    let x=$x+$?
else
    echo "Not a Composer project, skipping installation...\n"
fi

# Install NPM packages.
if [ -e ./packages.json ]
then
    npm install
    let x=$x+$?
else
    echo "Not an NPM project, skipping installation...\n"
fi

# Install Bower packages.
if [ -e ./bower.json ]
then
    ./node_modules/.bin/bower install
    let x=$x+$?
else
    echo "Not a Bower project, skipping installation...\n"
fi

# Perform Gulp tasks.
if [ -e ./gulpfile.js ]
then
    ./node_modules/.bin/gulp
    let x=$x+$?
else
    echo "No gulpfile detected, skipping Gulp build...\n"
fi

# If all were successful, echo 0 otherwise echo 1.
if [ $x = 0 ]; then
	echo 0
else
	echo 1
fi
