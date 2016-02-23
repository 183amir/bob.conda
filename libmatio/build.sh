#!/bin/bash

./configure --prefix="${PREFIX}" --with-zlib="${PREFIX}" --with-hdf5="${PREFIX}"
make
make check
make install
