#!/bin/bash

ROOT=$ROOT/home/chao
INSTALL=$ROOT/nginx-rtmp-install-static-1.10.2
OPENSSL=$ROOT/openssl-1.0.1u/
PCRE=$ROOT/pcre-8.39/
ZLIB=$ROOT/zlib-1.2.8/
RTMP=$ROOT/nginx-rtmp-module-1.1.10/

./configure --prefix=/$INSTALL/ --with-pcre=/$PCRE --with-zlib=$ZLIB --with-openssl=$OPENSSL --add-module=$RTMP --with-cc-opt="-static -static-libgcc" --with-ld-opt="-static"

