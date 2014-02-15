#!/usr/bash

#ffmpeg -y -i input -c:v libx264 -preset -tune -f mp4 /dev/null
ffmpeg -r 1/5 -i img%03d.jpg -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4

#avconv works
avconv -r 1 -i img%d.jpg -r 24 -s 704x480 -vsync cfr video.mpg
avconv -r 30 -i hxn-cam1/pic_folder/img%d.jpg -r 30 -s 704x480 -
vsync cfr video.mp4
avconv -r 10 -i img%d.jpg -b:v 1000k test.mp4

# also works
avconv -f image2 -i tmp/img%d.jpg -r 24 -s 704x480 v11.mp4

# no dropped frames
avconv -f image2 -r 1 -i hxn-cam1_v1/pic_folder/test%d.jpg -r 24 -s 704x480 v14.
mp4

# Using pipe (instead of ffplay, can use cat > out.mkv
cat *.jpg | ffmpeg -f image2pipe -r 1/5 -c:v mjpeg -i - -c:v copy -f matroska - 
| ffplay -

