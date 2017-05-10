#!/bin/bash
function md5() { md5sum<<<$1 | cut -f1 -d' '; }

# this should be a function not a script
