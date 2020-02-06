#!/bin/bash
./configure --prefix=${PREFIX} \
            --build=${BUILD}
make 
make check
make install
