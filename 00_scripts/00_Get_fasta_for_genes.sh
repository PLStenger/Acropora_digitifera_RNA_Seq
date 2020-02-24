#!/usr/bin/env bash
#$ -N Run_Get_fasta_for_genes


DATADIRECTORY=/home/stenger/stenger_data/Acropora_digitifera_RNA_Seq/01_data
GENOME_FASTA=/home/stenger/stenger_data/NEW_GENOME_ADIG2020/GCF_000222465.1_Adig_1.1_genomic_fna/GCF_000222465.1_Adig_1.1_genomic_fna/GCF_000222465.1_Adig_1.1_genomic_database_06_col1.fna
GTF=/home/stenger/stenger_data/NEW_GENOME_ADIG2020/GCF_000222465.1_Adig_1.1_genomicMOD.gtf

# https://bedtools.readthedocs.io/en/latest/content/tools/getfasta.html

#BEDTOOLS_ENV=". /appli/bioinfo/bedtools/2.26.0/env.sh"

#$BEDTOOLS_ENV

cd $DATADIRECTORY

#bedtools getfasta -fi $GENOME_FASTA -bed $GFF > $DATADIRECTORY/oyster_v9_AMP_enriched_ok.fasta
bedtools getfasta -fi $GENOME_FASTA -bed $GTF -split > $DATADIRECTORY/GCF_000222465.1_Adig_1.1_genomicMOD.fasta
