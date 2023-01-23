#!/bin/sh

# Create AppMaps for api/v1
FILES=`find spec | grep -i v1`

# Run AppMap on each file one by one because running all at once hits
# a bug in appmap-ruby
for file in $FILES; do
    if [ -f $file ]; then
        echo "==================="
        echo "Creating AppMap for $file"
        APPMAP=true bundle exec rspec $file
    fi
done
