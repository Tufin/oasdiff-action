#!/bin/sh
set -e

breaking_only=$1
fail_on_diff=$2
format="$3"
base="$4"
revision="$5"

if [ "$breaking_only" ] && [ "$fail_on_diff" ]
then
  oasdiff -breaking-only -fail-on-diff -format "$format" -base "$base" -revision "$revision"
elif [ "$breaking_only" ]
then
  oasdiff -breaking-only -format "$format" -base "$base" -revision "$revision"
elif [ "$fail_on_diff" ]
then
  oasdiff -fail-on-diff -format "$format" -base "$base" -revision "$revision"
else
  oasdiff -format "$format" -base "$base" -revision "$revision"
fi
