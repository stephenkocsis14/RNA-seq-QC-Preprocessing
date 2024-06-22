library(Rsubread)

align(index="genome_index",
      readfile1="data/trimmed/sample_trimmed.fastq",
      output_file="data/aligned/sample_aligned.bam",
      nthreads=4)

