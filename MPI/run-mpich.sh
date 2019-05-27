#!/bin/bash

## Specifies the interpreting shell for the job.
#$ -S /bin/bash

## Specifies that all environment variables active within the qsub utility be exported to the context of the job.
#$ -V

## Execute the job from the current working directory.
#$ -cwd

## Parallel programming environment (mpich) to instantiate and number of computing slots.
#$ -pe mpich 4

## The  name  of  the  job.
#$ -N ssalcedo_mpiconvolution

MPICH_MACHINES=$TMPDIR/mpich_machines
cat $PE_HOSTFILE | awk '{print $1":"$2}' > $MPICH_MACHINES


## In this line you have to write the command that will execute your application.
mpiexec -n 4 ./convolutionMPI /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel3x3_Edge.txt /state/partition1/ssh_result_im01_dynamic_1.ppm 1 >> dynamic_results.txt

rm -rf $MPICH_MACHINES

