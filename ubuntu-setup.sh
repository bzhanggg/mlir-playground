#!/bin/bash
set -e

# refresh package index
sudo apt update
sudo apt install -y wget lsb-release software-properties-common

# install MLIR and LLVM
sudo apt-get update
sudo apt-get install -y libtinfo-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libelf-dev
sudo apt-get install -y clang llvm lld

