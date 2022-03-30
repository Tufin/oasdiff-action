#!/bin/sh -l

path=$1
pwd
ls /github/workspace/
ls
oasdiff -format text -base /github/workspace/$path -revision /github/workspace/$path
