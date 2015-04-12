#tar zxf lua-5.1.tar.gz
#cd lua-5.1/
#make linux
#cp src/lua /usr/local/bin/
#cp src/luac /usr/local/bin/
#cd ../
#rm -rf lua-5.1/

tar zxf LuaJIT-2.0.2.tar.gz
cd LuaJIT-2.0.2/
make && make install
cp /usr/local/lib/libluajit-5.1.so* /usr/lib/
cp /usr/local/lib/libluajit-5.1.so* /usr/lib64/
cp -r /usr/local/include/luajit-2.0 /usr/include/
cd ../
rm -rf LuaJIT-2.0.2/

tar zxf luafilesystem-1_6_2.tar.gz
cd luafilesystem-1_6_2/
sed -i 's/include/include\/luajit-2.0/g' config
make && make install
cd ../
rm -rf luafilesystem-1_6_2/

tar zxf lua-redis-parser-0.10.tar.gz
cd lua-redis-parser-0.10/
sed -i 's/include/include\/luajit-2.0/g' Makefile
make && make install
cd ../
rm -rf lua-redis-parser-0.10/
