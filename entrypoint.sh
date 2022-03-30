#!/bin/sh -l

oasdiff -format text -base /github/workspace/$(path) -revision /github/workspace/$(path)
