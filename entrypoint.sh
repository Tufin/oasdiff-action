#!/bin/sh
set -e
oasdiff -format "$1" -base "$2" -revision "$3"
