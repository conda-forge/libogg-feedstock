#!/bin/bash
./configure --prefix=${PREFIX} \
            --build=${BUILD}

make -j${CPU_COUNT}
make check
make install
