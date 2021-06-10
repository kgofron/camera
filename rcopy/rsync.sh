# From synology system; Source has no "/", destination has "/"
sudo rsync -a kgofron@xf10idd-ioc1.cs.nsls2.local:/direct/IXS1 /volume1/IXS2/WinSys/

# Used these to test
sudo rsync -avn kgofron@xf10idd-ioc1.cs.nsls2.local:/IXS1/Data/2019-01-Cunsolo/ /volume1/IXS2/WinSys/IXS1/Data/2019-01-Cunsolo/
sudo rsync -av kgofron@xf10idd-ioc1.cs.nsls2.local:/IXS1/Data/2019-01-Cunsolo/ /volume1/IXS2/WinSys/IXS1/Data/2019-01-Cunsolo/
sudo rsync -av kgofron@xf10idd-ioc1.cs.nsls2.local:/IXS1/Data/ /volume1/IXS2/WinSys/IXS1/Data/

# rsync (private network)
rsync -avR -e 'ssh -o "ProxyCommand 'ssh -W %h:%p ssh01"' d* [username]@daisy.warwick.ac.uk:/home/[username]

# rsync (after Re-IP)
rsync -avR d* [username]@daisy.warwick.ac.uk:/home/[username]
