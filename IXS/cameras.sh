#!/bin/bash 
# This process is started by /et/init.d/cameras
# This bash script is located in /usr/local/bin/cameras.sh

#SAVE_PATH=/mnt/703-backup/everyone/HXN_Group/Cameras
SAVE_PATH=/media/18BE-26E1/Cameras
#SAVE_PATH=/mnt/disk2/Cameras/
FORMAT="+%Y-%m-%d_%H-%M-%S.jpg"

CAM1="ixs-cam1"
CAM2="ixs-cam2"
CAM3="ixs-cam3"
URL_CAM1=http://192.168.7.11/axis-cgi/jpg/image.cgi?resolution=704x576
URL_CAM2=http://192.168.7.12/axis-cgi/jpg/image.cgi?resolution=704x576
URL_CAM3=http://192.168.7.13/axis-cgi/jpg/image.cgi?resolution=704x576

while [ 1 ]; do
    wget -O $SAVE_PATH/$CAM1/`date $FORMAT` $URL_CAM1 > /dev/null 2> /dev/null
    wget -O $SAVE_PATH/$CAM2/`date $FORMAT` $URL_CAM2 > /dev/null 2> /dev/null
#    wget -O $SAVE_PATH/$CAM3/`date $FORMAT` $URL_CAM3 > /dev/null 2> /dev/null
    sleep 5
done

