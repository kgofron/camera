#!/usr/bash

#ffmpeg -y -i input -c:v libx264 -preset -tune -f mp4 /dev/null
ffmpeg -r 1/5 -i img%03d.jpg -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4

#avconv works
avconv -r 1 -i img%d.jpg -r 24 -s 704x480 -vsync cfr video.mpg