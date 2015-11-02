#!/bin/bash 
# This scripts moves ixs-cam1 and ixs-cam2 into ixsN folder. The ixsN folder is created

FORMAT="+%Y-%m-%d_%H-%M-%S"
newFolder=ixs`date $FORMAT`
#echo $newFolder

#imgDir="/home/kaz/Documents/swdev/Camera/IXS/TEST"
imgDir="/IXS/Images/Analyzer/"
testDir="-d $imgDir"

if [ ! -d newFolder ] && [ $testDir ]; 
  then
    echo "Creating folder $imgDir/$newFolder"
    mkdir "$imgDir/$newFolder"
    mv "$imgDir/ixs-cam4" "$imgDir/$newFolder/."
    mv "$imgDir/ixs-cam5" "$imgDir/$newFolder/."
    mkdir "$imgDir/ixs-cam4" "$imgDir/ixs-cam5"
  else
    echo "Nothing to be done since either (folder exists) or (directory does not exist) $imgDir/$newFolder"
fi;


