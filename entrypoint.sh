#!/bin/sh
set -e

readonly base="$1"
readonly revision="$2"
readonly format="$3"
readonly breaking_only="$4"
readonly fail_on_diff="$5"

if [ "$breaking_only" = "true" ] && [ "$fail_on_diff" = "true"  ]
then
  echo "running breaking_only and fail_on_diff..."
  oasdiff -breaking-only -fail-on-diff -format "$format" -base "$base" -revision "$revision"
elif [ "$breaking_only" = "true" ]
then
  echo "running breaking_only..."
  oasdiff -breaking-only -format "$format" -base "$base" -revision "$revision"
elif [ "$fail_on_diff" = "true" ]
then
  echo "running fail_on_diff..."
  oasdiff -fail-on-diff -format "$format" -base "$base" -revision "$revision"
else
  echo "running default..."
  oasdiff -format "$format" -base "$base" -revision "$revision"
fi
