Inspect Linux binaries: readelf, nm, and objdump 

https://jvns.ca/blog/2014/09/06/how-to-read-an-executable/

- symbols
readelf --symbols hello
objdump -s hello
readelf --sections hello
readelf --segments hello

