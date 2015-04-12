tar zxf lua-redis-parser-0.10.tar.gz
cd lua-redis-parser-0.10/
sed -i 's/include/include\/luajit-2.0/g' Makefile
make && make install
cd ../
rm -rf lua-redis-parser-0.10/
