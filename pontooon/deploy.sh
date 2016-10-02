#!/bin/bash

# Composer needs a HOME variable to function.
export HOME="/var/www"

# Directory path of this script.
CUR_PATH="/var/www/html"

# Change to this directory.
cd "$CUR_PATH"

# Store overall result in variable.
x=0

# Pull from repository.
git pull
let x=$x+$?

# Install Composer packages.
php composer.phar install
let x=$x+$?

# Install NPM packages.
npm install
let x=$x+$?

# Install Bower packages.
./node_modules/.bin/bower install
let x=$x+$?

# Perform Gulp tasks.
./node_modules/.bin/gulp
let x=$x+$?

# If all were successful, echo 0 otherwise echo 1.
if [ $x = 0 ]; then
	echo 0
else
	echo 1
fi
