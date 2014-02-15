#!/bin/bash 
# This scripts moves ixs-cam1 and ixs-cam2 into ixsN folder. The ixsN folder is created

FORMAT="+%Y-%m-%d_%H-%M-%S"
newFolder=ixs`date $FORMAT`
 
if [ ! -d newFolder ]; 
  then
    echo "creating ixs newFolder"
    mkdir $newFolder
    mv "ixs-cam1" "$newFolder/."
    mv "ixs-cam2" "$newFolder/."
    mkdir ixs-cam1 ixs-cam2
  else
    echo "directory ixsN exists, noting to be done"
fi;


