#!/bin/bash
mkdir -p $2
for file in "$@"
do
    if [ "$file" != "$1" ]; then
        output_file="$2/$(basename "$file" .fastq)_trimmed.fastq"
        trimmomatic SE -phred33 "$file" "$output_file" ILLUMINACLIP:TruSeq3-SE:2:30:10
    fi
done

