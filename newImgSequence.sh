#!/bin/bash 
# This scripts moves ixs-cam1 and ixs-cam2 into ixsN folder. The ixsN folder is created

FORMAT="+%Y-%m-%d_%H-%M-%S"
newFolder=ixs`date $FORMAT`
#echo $newFolder

imgDir="/home/kaz/Documents/swdev/Camera/IXS/TEST"
testDir="-d $imgDir"

if [ ! -d newFolder ] && [ $testDir ]; 
  then
    echo "Creating folder $imgDir/$newFolder"
    mkdir "$imgDir/$newFolder"
    mv "$imgDir/ixs-cam1" "$imgDir/$newFolder/."
    mv "$imgDir/ixs-cam2" "$imgDir/$newFolder/."
    mkdir "$imgDir/ixs-cam1" "$imgDir/ixs-cam2"
  else
    echo "Nothing to be done since either (folder exists) or (directory does not exist) $imgDir/$newFolder"
fi;


