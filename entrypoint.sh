#!/bin/sh -l

path=$1
echo 'pwd'
pwd
echo 'ls -a /github/workspace/'
ls -a /github/workspace/
echo 'ls -a'
ls -a
oasdiff -format text -base /github/workspace/$path -revision /github/workspace/$path
