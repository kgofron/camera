Acquiring images from Axis 214 video camera

Processing images using python, and ffmpeg (..)

1. /etc/init.d/cameras
2. /usr/local/bin/cameras.sh

Make sure to set the date/time
sudo date -s"2014-2-15 18:12:25"

-------------------
setup cron (user kaz configuration is in /var/spool/cron/crontabs/kaz )
>crontab -e
# m h  dom mon dow   command

EXAMPLE1 (every minute)
*/1 * * * * /home/kaz/Documents/swdev/Camera/IXS/TEST/newImgSequence.sh

EXAMPLE2 (every day at 12:20 am)
20 0 * * * /home/kaz/Documents/swdev/Camera/IXS/TEST/newImgSequence.sh

EXAMPLE3 (BeagleBone Black)
# 30 * * * *    /usr/bin/ntpdate-sync silent
*/1 * * * * /usr/local/bin/newImgSequence.sh
