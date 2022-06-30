#!/bin/sh -l

echo "1 $1"
echo "2 $2"
echo "3 $3"
echo "4 $4"
echo "5 $5"
oasdiff -breaking-only $1 -fail-on-diff $2 -format "$3" -base "$4" -revision "$5"
