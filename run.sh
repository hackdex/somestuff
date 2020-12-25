#!/usr/bin/env bash

for i in $(git diff --name-only HEAD HEAD~1 | awk '/^div1\/.*json/{print $0}'); do echo "Updating $i"; curl -X POST 'http://164.90.148.125/indexes/movies/documents' --data @$i; done
#for i in ./div1/*.json; do curl -X POST 'http://164.90.148.125/indexes/movies/documents' --data @$i; done
