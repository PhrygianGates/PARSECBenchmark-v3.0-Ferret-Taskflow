#!/bin/bash
export TBB30_INSTALL_DIR="/home/zhicheng/download/parsec-3.0/pkgs/libs/tbblib/obj/amd64-linux.gcc-taskflow" #
tbb_bin="/home/zhicheng/download/parsec-3.0/pkgs/libs/tbblib/obj/amd64-linux.gcc-taskflow/build/linux_intel64_gcc_cc8.5.0_libc2.28_kernel4.18.0_debug" #
if [ -z "$CPATH" ]; then #
    export CPATH="${TBB30_INSTALL_DIR}/include" #
else #
    export CPATH="${TBB30_INSTALL_DIR}/include:$CPATH" #
fi #
if [ -z "$LIBRARY_PATH" ]; then #
    export LIBRARY_PATH="${tbb_bin}" #
else #
    export LIBRARY_PATH="${tbb_bin}:$LIBRARY_PATH" #
fi #
if [ -z "$LD_LIBRARY_PATH" ]; then #
    export LD_LIBRARY_PATH="${tbb_bin}" #
else #
    export LD_LIBRARY_PATH="${tbb_bin}:$LD_LIBRARY_PATH" #
fi #
 #
