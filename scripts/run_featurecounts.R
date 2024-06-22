library(Rsubread)

featureCounts(files="data/aligned/sample_aligned.bam",
              annot.ext="annotation.gtf",
              isGTFAnnotationFile=TRUE,
              GTF.featureType="exon",
              GTF.attrType="gene_id",
              useMetaFeatures=TRUE,
              nthreads=4,
              out="data/counts/counts.txt")

