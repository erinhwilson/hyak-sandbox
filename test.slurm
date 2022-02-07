#!/bin/bash

# conda activate your appropriate environment first

# change job name as apropriate
#SBATCH --job-name=ErinTest
#SBATCH --output=ErinTest.log

# run time, change this as necessary
#SBATCH --time=2:00:00
# where should the job run?
#SBATCH --chdir=/gscratch/brl/ewilson6/workspace/hyak-sandbox

# these likely won't need to be changed
#SBATCH --account=brl
#SBATCH --partition=gpu-rtx6k

# nodes and tasks
#SBATCH --nodes=1
# this assumes you want half the alloc in CPUs and GPUs
# ntasks-per-node is CPUs
#SBATCH --ntasks-per-node=5
# this is the number of GPUs, the final value is count
#SBATCH --gres=gpu:rtx6k:1

# about half the memory (81/2 = 40.5 - 4)
#SBATCH --mem=36

# turn on e-email notifications
#SBATCH --mail-type=ALL
##SBATCH --mail-user=ewilson6@cs.washington.edu

#SBATCH --export=all

# run the python script
python test.py
