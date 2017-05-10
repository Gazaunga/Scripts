#!/bin/bash
for i in `ls -1`; do mv $i "${i^^}" ; done
# Rename all files in a directory to upper case
