#!/bin/sh -l

echo "Hello $1"
oasdiff -format text -base /github/workspace/$(spec-path) -revision /github/workspace/$(spec-path)
