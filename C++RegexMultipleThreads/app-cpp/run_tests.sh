#!/bin/bash

# Define the array of thread counts you want to test
thread_counts=(1 2 4 8 16 32 48 64 96)
# thread_counts=(32 64 96)

# Define the number of iterations you want to run for each thread count
iterations=1

# Define the output file for storing results
output_file="AffinityLog512KB.txt"

# Create or clear the output file
echo "Test Results - $(date)" > "$output_file"
echo "---------------------------------------" >> "$output_file"

# Loop over each thread count
for threads in "${thread_counts[@]}"
do
    echo "Testing with $threads threads..." | tee -a "$output_file"
    
    # Loop to run the test multiple times for each thread count
    for ((i=1; i<=iterations; i++))
    do
        # Set the affinityFlag (1 to enable, 0 to disable)
        affinityFlag=1  # Change to 1 to enable thread affinity
        
        # Display running iteration with affinity information
        echo "Running iteration $i for $threads threads... (affinity = $affinityFlag)" | tee -a "$output_file"
        
        # Run the program with the current thread count and affinityFlag, provide input, and capture the output
        ./build/file-retrieval-engine "$threads" "$affinityFlag" <<EOF | tee temp_output.txt
index /home/cc/dataset3_client_server
quit
EOF

        # Ensure the program has fully terminated before moving on
        wait

        # Add commands to clear caches after the program exits
        sudo sync
        sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"

        # Append the output of the command to the output file
        echo "Result for $threads threads, iteration $i:" >> "$output_file"
        cat temp_output.txt >> "$output_file"
        echo "---------------------------------------" >> "$output_file"

        # Add a short delay between iterations to ensure everything resets properly
        sleep 2
    done
done

# Clean up temporary files
rm temp_output.txt

echo "Testing complete. Results stored in $output_file"
