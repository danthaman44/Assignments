#!/bin/bash

echo "Hello World!"

grep 'Started GET' chronline.2013.8.27
sed 's/.Started GET ".*" for \([0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\).*\/\1/' |
sort > addresses

