#!/bin/bash
#SBATCH --job-name=onion_deduplication           # Job name
#SBATCH --nodes=1                   # Number of nodes
#SBATCH --ntasks-per-node=1         # Number of tasks (MPI processes) per node
#SBATCH --cpus-per-task=1           # Number of CPU cores per task
#SBATCH --mem=32G                   # Memory per node (increased to 32 GB)
#SBATCH --time=6:00:00              # Time limit (increased to 6 hours)
#SBATCH --output=onion_dedup.out  # Output file with Job ID in the filename
#SBATCH --error=onion_dedup.err   # Error file with Job ID in the filename

singularity exec onion_latest.sif ./onion_deduplicate.sh sl_all.vert sl_all_dedup.vert