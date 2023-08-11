#!/bin/sh -l

cd /

echo "Hello $1"
echo "answer=42" >> $GITHUB_OUTPUT
