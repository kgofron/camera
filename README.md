Acquiring images from Axis 214 video camera

Processing images using python, and ffmpeg (..)

1. /etc/init.d/cameras
2. /usr/local/bin/cameras.sh

Make sure to set the date/time correctly
sudo date -s"2014-2-15 18:12:25"

setup cron
>crontab -e
# m h  dom mon dow   command
*/1 * * * * /home/kaz/Documents/swdev/Camera/IXS/TEST/newImgSequence.sh
