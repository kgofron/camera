.ssh/config {In /home/usre dreictory }

I strongly encourage you all to replace your usage of
     ProxyCommand ssh [user@][host] nc %h %p (which tends to leave these 'nc' procs hanging around indefinitely!) with
     ProxyCommand ssh -W %h:%p [user@][host]

If you have some very old systems you have to deal with, you might find some that don't know -W and you're stuck with nc on those, but all others should be changed.  For those stuck with 'nc', you might consider if something like this will work for your use case:
     ProxyCommand ssh [user@][host] nc -w 5 %h %p

With the '-w 5' the nc should exit after 5s of idle, ok for data transfers, and such, or you could give it a longer timeout and also use the TCPKeepAlive ssh option, with a longer -w value than your TCPKeepAlive val, and then orphaned nc's should clean themselves up after your ssh exits.
