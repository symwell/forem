#!/bin/sh

cat openapi.yml | python3 yml_to_json.py > openapi.json.original
cat openapi.json.original | sed -e 's:(/locale/{locale})::' > openapi.json

