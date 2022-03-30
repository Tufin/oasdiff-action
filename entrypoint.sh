#!/bin/sh -l

echo "Hello $1"
oasdiff -format text -base /github/workspace/$(path) -revision /github/workspace/$(path)
