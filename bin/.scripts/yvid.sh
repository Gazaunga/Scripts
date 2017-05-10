#!/bin/bash
ffmpeg -loop_input -i cover.jpg -i soundtrack.mp3 -shortest -acodec copy output_video.mp4; 
# Convert a music file (mp3) to a mp4 video with a static image
# Can be easily wrapped up in a function: function mp3tovidwithimg() { ffmpeg -loop_input -i $1 -i $2 -shortest -acodec copy $3; }
# ex: mp3tovidwithimg cover.jpeg music_track.mp3 output_vid.mp4
