#!/bin/bash

## Specifies the interpreting shell for the job.
#$ -S /bin/bash

## Specifies that all environment variables active within the qsub utility be exported to the context of the job.
#$ -V

## Execute the job from the current working directory.
#$ -cwd

## Parallel programming environment (mpich) to instantiate and number of computing slots.
#$ -pe mpich-smp 32

## The  name  of  the  job.
#$ -N ssalcedo_hybridconvolution_8x2

## Passes an environment variable to the job
#$ -v  OMP_NUM_THREADS=2

MPICH_MACHINES=$TMPDIR/mpich_machines
cat $PE_HOSTFILE | awk '{print $1":"$2}' > $MPICH_MACHINES


## In this line you have to write the command that will execute your application.

mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel3x3_Edge.txt /state/partition1/ssh_result_im01_static_1.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel5x5_Sharpen.txt /state/partition1/ssh_result_im01_static_2.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel25x25_random.txt /state/partition1/ssh_result_im01_static_3.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel49x49_random.txt /state/partition1/ssh_result_im01_static_4.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel99x99_random.txt /state/partition1/ssh_result_im01_static_5.ppm 2 >> hybrid_results_8x2.txt

mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im03.ppm /share/apps/files/convolution/kernel/kernel3x3_Edge.txt /state/partition1/ssh_result_im03_static_1.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im03.ppm /share/apps/files/convolution/kernel/kernel5x5_Sharpen.txt /state/partition1/ssh_result_im03_static_2.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im03.ppm /share/apps/files/convolution/kernel/kernel25x25_random.txt /state/partition1/ssh_result_im03_static_3.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im03.ppm /share/apps/files/convolution/kernel/kernel49x49_random.txt /state/partition1/ssh_result_im03_static_4.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im03.ppm /share/apps/files/convolution/kernel/kernel99x99_random.txt /state/partition1/ssh_result_im03_static_5.ppm 2 >> hybrid_results_8x2.txt

mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel3x3_Edge.txt /state/partition1/ssh_result_im05_static_1.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel5x5_Sharpen.txt /state/partition1/ssh_result_im05_static_2.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel25x25_random.txt /state/partition1/ssh_result_im05_static_3.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel49x49_random.txt /state/partition1/ssh_result_im05_static_4.ppm 2 >> hybrid_results_8x2.txt
mpiexec -f $MPICH_MACHINES -n $NHOSTS ./hybridConvolution2threads /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel99x99_random.txt /state/partition1/ssh_result_im05_static_5.ppm 2 >> hybrid_results_8x2.txt

rm -rf $MPICH_MACHINES

