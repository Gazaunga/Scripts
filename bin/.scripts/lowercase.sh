#!/bin/bash
for i in `ls -1`; do mv $i "${i,,}" ; done

# there is a lower/upper case modification build-in bash using for, for looping files through directory
