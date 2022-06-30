#!/bin/sh
set -e

readonly breaking_only="$1"
readonly fail_on_diff="$2"
readonly format="$3"
readonly base="$4"
readonly revision="$5"

if [ "$breaking_only" -eq 1 ] && [ "$fail_on_diff" -eq 1 ]
then
  echo "running diff with breaking and failure"
  oasdiff -breaking-only -fail-on-diff -format "$format" -base "$base" -revision "$revision"
elif [ "$breaking_only" -eq 1 ]
then
  oasdiff -breaking-only -format "$format" -base "$base" -revision "$revision"
elif [ "$fail_on_diff" -eq 1 ]
then
  oasdiff -fail-on-diff -format "$format" -base "$base" -revision "$revision"
else
  oasdiff -format "$format" -base "$base" -revision "$revision"
fi
