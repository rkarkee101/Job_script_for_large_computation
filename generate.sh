#!/bin/bash

# Base template for the job script
base_job="job"

# Range parameters
start=1
end=2048
step=42
job_counter=1

# Generate job scripts
for ((i = start; i <= end; i += step)); do
    # Calculate the range for the current script
    range_start=$(printf "%04d" "$i")
    range_end=$(printf "%04d" "$((i + step - 1))")
    if ((range_end > end)); then
        range_end=$(printf "%04d" "$end")
    fi

    # Create the new job script
    new_job="job_$job_counter"
    cp "$base_job" "$new_job"

    # Replace the range in the new script
    sed -i "s/{0001..0003}/{${range_start}..${range_end}}/g" "$new_job"

    # Increment job counter
    ((job_counter++))
done

echo "Job scripts generated."
