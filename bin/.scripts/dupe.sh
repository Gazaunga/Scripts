#!/bin/bash
vi +'%!sort | uniq' +wq file.txt
# Sort and remove duplicate lines in a file in one step without intermediary files
# turn them into function
