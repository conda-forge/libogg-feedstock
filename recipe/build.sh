#!/bin/bash
./configure --prefix=${PREFIX} \
            --build=${BUILD} \
            --enable-shared \
            --disable-static

make -j${CPU_COUNT}
make check
make install
