module purge
module load nvhpc/25.9-nompi
module load openblas/0.3.32-serial

which nvc
nvc --version

make clean
make -j 12 #Run make with 12 threads.