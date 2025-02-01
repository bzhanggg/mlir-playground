#!/bin/bash
set -e

CLANG=`xcrun -f clang`
INSTALLDIR=`pwd`/../install

cd ./externals/llvm-project/llvm
mkdir build-release; cd build-release
cmake -GNinja \
 -DCMAKE_BUILD_TYPE=Release \
 -DCMAKE_INSTALL_PREFIX=${INSTALLDIR} \
 -DLLVM_ENABLE_ASSERTIONS=ON \
 -DLLVM_TARGETS_TO_BUILD="host" \
 -DLLVM_ENABLE_PROJECTS="clang;mlir" \
 -DCLANG_ENABLE_CIR=ON \
 -DCMAKE_CXX_COMPILER=${CLANG}++ \
 -DCMAKE_C_COMPILER=${CLANG} ../
ninja install
