#!/bin/sh -l

path=$(path)
oasdiff -format text -base /github/workspace/$path -revision /github/workspace/$path
