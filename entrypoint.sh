#!/bin/sh
set -e
oasdiff -breaking-only "$1" -fail-on-diff "$2" -format "$3" -base "$4" -revision "$5"
