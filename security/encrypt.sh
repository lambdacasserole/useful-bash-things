#!/bin/bash

# Encrypt a file with a password.
cat $1 | openssl enc -aes-256-cbc -pbkdf2 -e > $2
