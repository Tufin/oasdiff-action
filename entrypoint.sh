#!/bin/sh
set -e

oasdiff -format "$3" -base "$4" -revision "$5" -breaking-only -fail-on-diff
