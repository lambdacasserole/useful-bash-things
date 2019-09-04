#!/bin/bash

# Tar, zip and encrypt a directory with a password.
tar cz $1 | openssl enc -aes-256-cbc -e > $2
