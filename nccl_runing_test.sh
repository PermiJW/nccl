cd ..
rm -r nccl_make
mkdir nccl_make
cd nccl
make -j src.build BUILDDIR=”/mount/jiawei-space/nccl_building/nccl_make/”;\
cd ..;\
cd nccl-tests;\
make NCCL_HOME=”/mount/jiawei-space/nccl_building/nccl_make/”;\
./build/all_reduce_perf -b 8 -e 128M -f 2 -g 4
