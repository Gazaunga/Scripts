#!/bin/bash
mencoder video.avi -o rotated-right.avi -oac copy -ovc lavc -vf rotate=1
# 0: Rotate by 90 degrees clockwise and flip (default).
# 1: Rotate by 90 degrees clockwise.
# 2: Rotate by 90 degrees counterclockwise.
# 3: Rotate by 90 degrees counterclockwise and flip.
