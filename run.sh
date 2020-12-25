#!/usr/bin/env bash

for i in ./div1/*.json; do curl -X POST 'http://164.90.148.125/indexes/movies/documents' --data @$i; done
