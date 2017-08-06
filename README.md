# compile-node.js-new-version
#this package is used compiling node.js >= v6.x for mips without fpu on openwrt.

#at first, you should install gcc-multilib & g++-multilib, for ubuntu:
sudo apt-get install gcc-multilib g++-multilib

#then patch the file node-source/deps/v8/src/base/cpu.cc via the patch file, XXX means different version patch:
patch node-src/deps/v8/src/base/cpu.cc node-vXXXX.patch

#then change the compile_node.sh according to your cross compiler toolchain & run:
./compile_node.sh
