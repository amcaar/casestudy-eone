#!/bin/bash
#SBATCH --job-name=synthalloc
#SBATCH --output=/home/ubuntu/slurm-%j.out
#SBATCH --error=/home/ubuntu/slurm-%j.err
#SBATCH --partition=c1wn

srun /opt/tmp/synthalloc < /home/ubuntu/casestudy/synthalloc-files/job$1.dat
