#!/bin/bash 
# This process is started by /et/init.d/cameras
# This bash script is located in /usr/local/bin/cameras.sh

#SAVE_PATH=/mnt/703-backup/everyone/HXN_Group/Cameras
#SAVE_PATH=/mnt/disk2/Cameras/
SAVE_PATH=/nsls2/xf28id1/Cameras/
FORMAT="+%Y-%m-%d_%H-%M-%S.jpg"

CAM1="xpd-cam1"
CAM2="hxn-cam2"
CAM3="hxn-cam3"
XPD_CAM1="10.28.1.25"

URL_CAM1=http://$CAM1.bnl.gov/axis-cgi/jpg/image.cgi?resolution=704x576
URL_CAM2=http://$CAM2.bnl.gov/axis-cgi/jpg/image.cgi?resolution=704x576
URL_CAM3=http://$CAM3.bnl.gov/axis-cgi/jpg/image.cgi?resolution=704x576

URL_CAM1=http://$CAM1/axis-cgi/jpg/image.cgi?resolution=704x576

while [ 1 ]; do
#    wget -O $SAVE_PATH/$CAM1/`date $FORMAT` $URL_CAM1 > /dev/null 2> /dev/null
#    wget -O $SAVE_PATH/$CAM2/`date $FORMAT` $URL_CAM2 > /dev/null 2> /dev/null
#    wget -O $SAVE_PATH/$CAM3/`date $FORMAT` $URL_CAM3 > /dev/null 2> /dev/null
    wget -O $SAVE_PATH/xpd-cam1/`date $FORMAT` $URL_CAM1 > /dev/null 2> /dev/null
    sleep 5
done
