#!/bin/sh
set -e

readonly base="$1"
readonly revision="$2"
readonly format="$3"
readonly breaking_only="$4"
readonly check_breaking="$5"
readonly fail_on_diff="$6"

echo "running oasdiff... base: $base, revision: $revision, format: $format, breaking_only: $breaking_only, check_breaking: $check_breaking, fail_on_diff: $fail_on_diff"

if [ "$check_breaking" = "true" ] && [ "$fail_on_diff" = "true"  ]
then
  echo "running check_breaking and fail_on_diff..."
  oasdiff -no-lint -check-breaking -fail-on-diff -format "$format" -base "$base" -revision "$revision"
elif [ "$check_breaking" = "true" ]
then
  echo "running check_breaking..."
  oasdiff -no-lint -check-breaking -format "$format" -base "$base" -revision "$revision"
elif [ "$breaking_only" = "true" ] && [ "$fail_on_diff" = "true"  ]
then
  echo "running breaking_only and fail_on_diff..."
  oasdiff -no-lint -breaking-only -fail-on-diff -format "$format" -base "$base" -revision "$revision"
elif [ "$breaking_only" = "true" ]
then
  echo "running breaking_only..."
  oasdiff -no-lint -breaking-only -format "$format" -base "$base" -revision "$revision"
elif [ "$fail_on_diff" = "true" ]
then
  echo "running fail_on_diff..."
  oasdiff -no-lint -fail-on-diff -format "$format" -base "$base" -revision "$revision"
else
  echo "running default..."
  oasdiff -no-lint -format "$format" -base "$base" -revision "$revision"
fi
