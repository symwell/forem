#!/bin/bash

FILES=`find spec | grep -i v1`

# run appmap on each file one by one, because if we do them all at
# once we hit some appmap-ruby bug that stops appmap
for file in $FILES; do
    if [ -f $file ]; then
        echo $file
        APPMAP=true bundle exec rspec $file
    fi
done
