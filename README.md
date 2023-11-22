# Deduplication

This repository contains the scripts using for performing the near-deduplication with Onion.

Script *prepare_vert_for_onion.sh* replaces all <text> tags in given vert file with <doc> tags (by using <doc> tags Onion
automatically removes all documents with all paragraphs removed).

Script *merge_for_onion.sh* merges all vert files in a directory in a single vert file (this was used to merge all
Slovene corpora into 1 file).

Script *onion_deduplicate.sh* performs the near-deduplication on input file using Onion. Deduplication is performed
using 9-grams and  duplicate content threshold 0.9.

Script *run_deduplication.sh* contains calls of all previous scripts.

The final deduplication (of merged Slovene corpora) was performed on SLING due to memory requirements. Dockerfile and
sbatch script were added for running the deduplication there:
- Dockerfile builds the Onion image for SLING (image is already uploaded to Dockerhub as [dvres/onion](https://hub.docker.com/r/dvres/onion/tags)).
- Sbatch script contains the execution command for deduplication inside the singularity container.