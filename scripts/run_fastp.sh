#!/bin/bash
mkdir -p $2
for file in "$@"
do
    if [ "$file" != "$1" ]; then
        output_file="$2/$(basename "$file" .fastq)_trimmed.fastq"
        fastp -i "$file" -o "$output_file"
    fi
done

