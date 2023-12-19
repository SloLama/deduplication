#!/bin/bash
#SBATCH --job-name=onion_deduplication           # Job name
#SBATCH --output=onion_console.txt
#SBATCH --nodes=1                   # Number of nodes
#SBATCH --ntasks-per-node=1         # Number of tasks (MPI processes) per node
#SBATCH --cpus-per-task=2           # Number of CPU cores per task
#SBATCH --mem=64G                   # Memory per node (increased to 64 GB)
#SBATCH --time=72:00:00              # Time limit (increased to 72 hours)

# Get the command-line parameter
file_in=$1
file_out=$2

singularity exec onion_latest.sif ./onion_deduplicate.sh $file_in $file_out