#!/bin/bash
#SBATCH --job-name=synthalloc
#SBATCH --output=slurm-%j.out
#SBATCH --error=slurm-%j.err
#SBATCH --partition=c1wn

srun /opt/tmp/synthalloc < /home/ubuntu/casestudy/synthalloc-files/job%j.dat
