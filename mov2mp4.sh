#!/bin/bash
file="$1"

# Requires ffmpeg installed: https://ffmpeg.org
# Inspired by this Stack Exchange post: https://unix.stackexchange.com/questions/28803/how-can-i-reduce-a-videos-size-with-ffmpeg
# Instructed by this StackOverflow post: https://stackoverflow.com/questions/13351806/file-name-manipulation-with-shell-scripts-changing-file-extensions
mov2mp4()
{
  filename=$(basename "$file")
  filename=${filename%.*}
  ffmpeg -i $file -vf "scale=trunc(iw/4)*2:trunc(ih/4)*2" $filename.mp4
}

mov2mp4 $1