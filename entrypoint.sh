#!/bin/sh -l

PATH=$1
PR_BASE_REF=$GITHUB_BASE_REF
PR_BASE_SHA=$GITHUB_SHA
PUSH_BASE_REF=$GITHUB_REF_NAME
PREV_SHA='na'

echo $PR_BASE_REF
echo $PR_BASE_SHA
echo $PUSH_BASE_REF
echo $PREV_SHA
# echo "Retrieving changes between $PREV_SHA ($PREV_BRANCH) → $CURRENT_SHA ($CURRENT_BRANCH)"

# cp /github/workspace/$PATH /tmp/base
# git checkout $PREVIOUS_SHA
# cp /github/workspace/$PATH /tmp/revision

# oasdiff -format text -base /tmp/base -revision /tmp/revision
