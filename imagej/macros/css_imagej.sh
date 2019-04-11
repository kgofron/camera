export EPICS_CA_MAX_ARRAY_BYTES=6000000
cd ~
rm EPICS_AD_Viewer.properties
echo "PVPrefix=$1" > EPICS_AD_Viewer.properties
imagej -m /usr/share/imagej/macros/CSS_epics.ijm
