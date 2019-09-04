#!/bin/bash

# Decrypt and untar/unzip a directory.
openssl enc -aes-256-cbc -d -in $1 | tar xz
