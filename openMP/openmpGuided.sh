#!/bin/bash

## Specifies the interpreting shell for the job.
#$ -S /bin/bash

## Specifies that all environment variables active within the qsub utility be exported to the context of the job.
#$ -V

## Specifies the parallel environment
#$ -pe smp 4

## Execute the job from the current working directory.
#$ -cwd 

## The  name  of  the  job.
#$ -N ssalcedoGuided

##send an email when the job ends
#$ -m e

##email addrees notification
#$ -M ssh5@alumnes.udl.cat

##Passes an environment variable to the job
#$ -v  OMP_NUM_THREADS=4

## In this line you have to write the command that will execute your application.
./convolutionOMPguided /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel3x3_Edge.txt /state/partition1/ssh_result_im01_guided_1.ppm 1 >> guided_results.txt
./convolutionOMPguided /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel5x5_Sharpen.txt /state/partition1/ssh_result_im01_guided_2.ppm 1 >> guided_results.txt
./convolutionOMPguided /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel25x25_random.txt /state/partition1/ssh_result_im01_guided_3.ppm 1 >> guided_results.txt
./convolutionOMPguided /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel49x49_random.txt /state/partition1/ssh_result_im01_guided_4.ppm 1 >> guided_results.txt
./convolutionOMPguided /share/apps/files/convolution/images/im01.ppm /share/apps/files/convolution/kernel/kernel99x99_random.txt /state/partition1/ssh_result_im01_guided_5.ppm 1 >> guided_results.txt

./convolutionOMPguided /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel3x3_Edge.txt /state/partition1/ssh_result_im05_guided_1.ppm 1 >> guided_results.txt
./convolutionOMPguided /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel5x5_Sharpen.txt /state/partition1/ssh_result_im05_guided_2.ppm 1 >> guided_results.txt
./convolutionOMPguided /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel25x25_random.txt /state/partition1/ssh_result_im05_guided_3.ppm 1 >> guided_results.txt
./convolutionOMPguided /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel49x49_random.txt /state/partition1/ssh_result_im05_guided_4.ppm 1 >> guided_results.txt
./convolutionOMPguided /share/apps/files/convolution/images/im05.ppm /share/apps/files/convolution/kernel/kernel99x99_random.txt /state/partition1/ssh_result_im05_guided_5.ppm 1 >> guided_results.txt
