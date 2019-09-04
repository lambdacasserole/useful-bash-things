#!/bin/bash

# Decrypt a file.
openssl enc -pbkdf2 -aes-256-cbc -d -in $1 > $2
