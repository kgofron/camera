
# Restructured Text format .rst

##Dependencies##

```
apt install pandac
pip install restview

Module ADUVC
git clone https://github.com/epicsNSLS2-areaDetector/ADUVC
cd ADUVC/docs
mkdir ADUVC
cd ADUVC/
cp ../assets/ADUVCBase.png .
cd ..
pandoc index.html -f html -t rst -o ADUVC/ADUVC.rst
cd ADUVC
 ~/.local/bin/restview ADUVC.rst 
```