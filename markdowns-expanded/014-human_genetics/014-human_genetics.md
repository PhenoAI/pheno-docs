# Human genetics 

### Description 

The Human Phenotype Project collects genomic variation data on all its participants. The genomic data together with the Human Phenotype Project  deep-phenotypes allows to investigate the progression of disease, and to explore personalized treatments. We genotype millions of positions by low-pass sequencing combined with imputation using gencove platform technologies. Genotype imputation is a process of statistically inferring unobserved genotypes using known haplotypes in a population. The performance of Gencove genotype imputation is very high ( accuracy > 98% ) ([Wasik et al. 2021](https://link.springer.com/article/10.1186/s12864-021-07508-2?utm_campaign=2022.01%20Publications&utm_source=LP%20for%20Pharmacogenomics)). 

### Introduction

Genomic variation refers to DNA sequence differences between individuals. Some genetic variants can influence biological function (such as a mutation that causes a genetic disease), while others have no known effects. The genomic data together with the Human Phenotype Project rich variety of phenotypic data enables investigation of how genetics impact the progression of disease, and exploration of personalized prevention strategies and  treatments. 

The Human Phenotype Project uses low-pass sequencing combined with [imputation](https://en.wikipedia.org/wiki/Imputation_(genetics)) to obtain genomic variation, using [genocve](https://gencove.com) platform technologies. We do not target specific regions by sequencing, but rather sample the entire genome with low average depth of coverage, and impute the sequence data to the haplotype reference panel which includes a large set of known genetic variants. Briefly, the model approach is to identify haplotypes shared between a study sample and a reference panel based on the study sample observed genotypes. Next, the unobserved genotypes are extrapolated according to the large reference data as illustrated in Figure 1. Imputation is performed for single nucleotide polymorphisms (SNPs) and short insertion–deletion variants (indels), structural variation are currently not included. The overall accuracy of gencove imputed genotypes is 98.22% (Wasik et al. 2021). We also validated the accuracy of the imputation using two hundred Human Phenotype Project participants from several ancestries which had both low-pass sequencing done and Illumina genotyping array data. We obtained high concordance rates, greater than 96%.

![study sample](study_sample.png)

Figure 1: taken from [Li et al. 2013](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2925172/).
Panel A illustrates the observed data which consists of genotypes at a modest number of genetic markers in each sample being studied and of detailed information on genotypes (or haplotypes) for a reference sample. Panel B illustrates the process of identifying regions of chromosomes shared between a study sample and individuals in the reference panel. In Panel C, observed genotypes and haplotype sharing information have been combined to fill in a series of unobserved genotypes in the study sample.*

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
#### Genotyping Procedure
DNA is collected from Human Phenotype Project participants using a buccal swab during their baseline visit. DNA is collected only once as germline DNA is considered constant. The buccal swabs are shipped to Gencove laboratories. The entire sequencing and genotyping workflow is performed by Gencove technologies. The Detailed information about the Gencove algorithms and quality control protocols are available in Wasik et al. 2021,  we briefly describe the key steps here.

Gencove’s workflow contains three steps: DNA extraction and library preparation, low-pass whole genome sequencing, and imputation analysis. Sequencing is performed at Neogen GeneSeek Laboratories using Illumina Novaseq at low-pass, targeting coverage levels of 0.5× and 1×. Whole-genome coverage is defined as the number of mapped DNA bases divided by the size of the genome (∼3 billion base pairs). We perform paired-end sequencing at length of 150-bp resulting in two FASTQ files (R1 and R2). Sequencing at paired-end mode significantly improves alignment to the genome. Next, the FASTQ files are aligned to the hs37-1kg reference genome, resulting in a BAM (Binary Alignment Map) file. In the sequence alignment procedure the DNA reads are mapped (in-pair) to the human genome reference sequence by similarity between the sequences. Lastly, loimpute-v0.1.0, Gencove’s imputation procedure, is used over the aligned reads. Imputation is done for the autosomal chromosomes (1-22) using The 1000 Genomes phase 3 haplotypes (1KGP3) as a reference panel, resulting in a VCF (Variant Call Format) file. The VCF contains the most likely genotype (GT) at 37,559,140 positions and their corresponding genotype probabilities (GP). Finally, Gencove employs quality control procedures to exclude samples with poor sequencing and genotyping results.

### Data availability 
<!-- for the example notebooks -->
The information is stored in a number of statistics parquet files:<br>
- `human_genetics.parquet`: sample metadata, including QC statistics, paths to PLINK variant files (raw and post-QC), and principal components (PCs).<br>
- `variants_qc.parquet`: variant QC statistics.<br>
- `relationship/relationship_ibs.txt`: IBS calculated by PLINK for pairs of participants.<br>
- `relationship/relationship_king.tsv`: King kinship coefficients for pairs of participants.<br>
- `pca/pca.parquet`: a PLINK file containing  principal components.<br>
- `pca/pca_loadings.tsv`: a PLINK file containing principal component loadings calculated.<br>

```{mermaid}
graph LR;
    D[DNA extraction] -->|sequencing| F(FASTQ) -->|alignment| B(BAM) -->|imputation| V(VCF)
    H[REFERENCE HAPLOTYPES] -->|imputation| V -->|"sample<br>aggregation"| R(BED<br>raw) -->|QC| Q(BED<br>post-qc)
    Q --> PCA(PCA)
    Q --> IBS(PLINK IBS<br>relationships)
    Q --> KING(KING<br>relationships)
```

### Summary of available data 
<!-- for the data browser -->
#### Raw DNA data
Pheno provides per each sample all of the raw sequencing and genotyping workflow data, including FASTQ, BAM, VCF, and QC files.

- FASTQ files are the sequencing machine outputs. They are text files that store the DNA sequences and their corresponding quality scores. We perform the sequencing at paired-end mode, meaning that each DNA molecule is sequenced from both sides, therefore there are two FASTQ files (R1 and R2).
- Binary Alignment Map (BAM) files are a binary and indexed representation of sequence alignment results. The BAM file stores the position of the DNA reads in the reference genome and the corresponding mapping quality. Indexing is provided in the bam.bai file, and allows to retrieve alignments that overlap a specific location quickly.
- Variant Call Format (VCF) file is a text file used for storing genetic variations. VCF consists of a header and a table. The header provides metadata describing the table fields and their values. The FILTER field holds a flag indicating whether the variant has failed or successfully passed filters. The raw genotype data includes all 37M positions regardless of their FILTER flag status. Genotypes are flagged as ‘LOWCONF’ at the FILTER field if their maximum GP is less than 0.9, and otherwise flagged as ‘PASS’ quality check. The following FORMAT fields are provided in the VCF - GT:RC:AC:GP:DS ([VCF specification](https://samtools.github.io/hts-specs/VCFv4.3.pdf)). Please note that the data is unphased.
- PLINK binary biallelic genotype file - In addition to the single sample VCFs we also provide the raw genotype data of all samples jointly in PLINK bed format. Because of the large number of variants, we split the data to chromosomes  (22 PLINK bed/bim/bam files). PLINK bed file is a compacted binary representation of genotypes at bi-allelic variants. It is accompanied by .bim and .fam files, which are the metadata files for variants and samples, respectively ([PLINK specification](https://www.cog-genomics.org/plink/1.9/formats#bed)).
- Gencove QC file - Gencove performs quality control to exclude samples with poor sequencing and genotyping results. Gencove’s quality control matrices are included in the sample metadata.

The raw genotype data includes 34,580,532 SNPs and 2,978,606 short indels, 37,494,604 of the variants are bi-alleleic and 30,990 are multi-allelic. Multi-allelic variants are represented in variant normalization format, meaning each alternate allele is listed in a separate line, in both the VCFs and PLINK.

Notably, we do not provide the raw data of samples who failed Gencove QC or for which we identify a possibility of DNA contamination or of mislabelling (i.e. DNA samples are associated with the wrong individual), as explained in section ‘Sample evaluation’. 

#### Post-genotyping QC data
- We provide the QC genotyped data in PLINK format as explained above. The post-genotyping QC procedure resulted in genotypes for ~99.98% of total samples, and 5,770,633 variants that passed variant QC (~15.36% of the total variants). 
- In addition to the genotype data we provide auxiliary tabulated datasets such as : variants and sample QC metrics, principal component projection, and familial relationships estimates.

![availbale data](genetics_data.png)

### Relevant links

* [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/014-human_genetics.html)
* [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/14)