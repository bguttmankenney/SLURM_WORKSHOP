#!/bin/bash

#Here is a comment
#SBATCH --time=00:10:00
#SBATCH --job-name=Myjob
#SBATCH --output=Myjob_%j.out
#SBATCH --error=Myjob_%j.err
#SBATCH --partition=broadwl-lc
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=2000
#SBATCH --qos=stafftest

module load openmpi/3.1.2     

#Run your code
mpirun  ./mpi_prog 

