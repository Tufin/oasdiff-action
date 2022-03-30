#!/bin/sh -l

path=$1

echo "Retrieving changes between $INPUT_PREVIOUS_SHA ($INPUT_TARGET_BRANCH) → $INPUT_CURRENT_SHA ($INPUT_CURRENT_BRANCH)"

cp /github/workspace/$path /tmp/base
git checkout $INPUT_PREVIOUS_SHA
cp /github/workspace/$path /tmp/revision

oasdiff -format text -base /tmp/base -revision /tmp/revision
