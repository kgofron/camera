cd ~
rm EPICS_NTNDA_Viewer.properties
echo "channelName=$1" > EPICS_NTNDA_Viewer.properties
imagej -m ~/.imagej/macros/CSS_epics_pva.ijm

