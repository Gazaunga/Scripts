#!/bin/bash

source $HOME/bin/utils.sh

e_header "Checking for Packages"

recipes=(
  package
  package
  package
  package
)
list="$(to_install "${recipes[*]}" "$(pacaur -S list)")"
if [[ "$list" ]]; then
for item in ${list[@]}
  do
   echo "$item is not on the list"
  done
else
e_arrow "Nothing to install. You've already got them all."
fi
