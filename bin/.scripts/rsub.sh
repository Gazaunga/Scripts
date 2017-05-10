#!/bin/bash
find . -depth  -type d  -empty -exec rmdir {} \;
# Recursively remove all empty sub-directories from a directory tree
# 
