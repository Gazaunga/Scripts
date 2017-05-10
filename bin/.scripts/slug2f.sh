#!/bin/bash
sed -e 's/^./\U&/' -e 's/_./\U&/g' -e 's/_/ /g' /path/to/input
# Convert a list of terms in slug format to capitalized words
