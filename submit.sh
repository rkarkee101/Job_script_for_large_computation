#!/bin/bash

# Loop through all job_* files and submit them
for job_file in job_*; do
    echo "Submitting $job_file"
    sbatch "$job_file"
done

echo "All jobs submitted."
