#!/bin/bash

set -e

rm -rf cm* CM* lib* cryptomini* Testing* tests* pycryptosat include
rm -rf tests
cmake -DSTATS=ON -DUSE_GAUSS=ON -DENABLE_TESTING=ON -DSLOW_DEBUG=ON ..
make -j6
make test
cd ../tests/simp-checks/
./checks.py ../../build/cryptominisat5 testfiles/*
cd ../../build/
