#!/bin/bash
find . -maxdepth 1 -type f -name '\.*' | sed -e 's,^\./\.,,' | sort | xargs -iname mv .name name
# remove leading dot from files in current directory, effectively 'unhiding' them
# turn into function
