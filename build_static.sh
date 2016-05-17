#!/bin/bash

set -e

rm -rf cm* CM* lib* cryptomini* Testing* tests* pycryptosat include tests
cmake -DENABLE_TESTING=ON -DREQUIRE_M4RI=ON -DSTATICCOMPILE=ON -DENABLE_PYTHON_INTERFACE=OFF -DNOVALGRIND=ON -DNOZLIB=ON -DONLY_SIMPLE=ON -DSTATICCOMPILE=ON -DCMAKE_BUILD_TYPE=Release ..
make -j6 VERBOSE=1
