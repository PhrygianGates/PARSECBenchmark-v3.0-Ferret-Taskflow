#!/bin/csh
setenv TBB30_INSTALL_DIR "/home/zhicheng/download/parsec-3.0/pkgs/libs/tbblib/obj/amd64-linux.gcc-tbb" #
setenv tbb_bin "/home/zhicheng/download/parsec-3.0/pkgs/libs/tbblib/obj/amd64-linux.gcc-tbb/build/linux_intel64_gcc_cc8.5.0_libc2.28_kernel4.18.0_release" #
if (! $?CPATH) then #
    setenv CPATH "${TBB30_INSTALL_DIR}/include" #
else #
    setenv CPATH "${TBB30_INSTALL_DIR}/include:$CPATH" #
endif #
if (! $?LIBRARY_PATH) then #
    setenv LIBRARY_PATH "${tbb_bin}" #
else #
    setenv LIBRARY_PATH "${tbb_bin}:$LIBRARY_PATH" #
endif #
if (! $?LD_LIBRARY_PATH) then #
    setenv LD_LIBRARY_PATH "${tbb_bin}" #
else #
    setenv LD_LIBRARY_PATH "${tbb_bin}:$LD_LIBRARY_PATH" #
endif #
 #
