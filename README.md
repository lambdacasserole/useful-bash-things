# Useful Bash Things
A collection of Bash scripts and snippets that I find useful.

![Logo](logo.png)

## /crontab/*
These files contain snippets runnable from within `crontab`. Usually things to do with updates and/or SSL certificate renewals.

## /home/*
These files contain snippets I find useful to include in any of the files under a users home (`~`) directory on Linux. They're named with the convention `n-f.sh` where:

* `n` is the name of the file the snippet should be included in, excluding any leading dots
* `f` is the piece of functionality the snippet provides, with words separated by hashes

## /pontoon/*
Contains bash scripts I find useful to run from [Pontoon](https://github.com/lambdacasserole/pontoon) installations. The most prominent being `deploy.sh` which runs a `git pull` followed by installation commands for my most commonly used package managers and build system.

## Contributing
This is really just a dump of snippets, but if you spot something useful/have a correction feel free to put in a PR.
