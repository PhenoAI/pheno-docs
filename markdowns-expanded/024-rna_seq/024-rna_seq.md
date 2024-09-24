# RNA-Seq dataset

### Description 

The RNA-Seq dataset includes bulk gene expression profiles measured in human peripheral blood mononuclear cells (PBMC) cells, sampled at each visit to the clinical testing center.

### Introduction 
<!-- just for RNA-Seq: shortened from the original introduction in the data doc -->
RNA sequencing (RNA-Seq) is a powerful high-throughput technique used to analyze the transcriptome, providing a snapshot of RNA presence and quantity in a biological sample at a given moment. Our bulk approach sequences RNA from a mixed population of cells, giving a cumulative overview of gene expression across the sample. It's widely used for understanding complex biological processes and disease mechanisms.

This RNA-Seq dataset focuses on gene expression profiles in human peripheral blood mononuclear cells (PBMC), collected during patient visits to a clinical testing center. The aim is to uncover the gene expression dynamics in PBMCs under various clinical conditions. PBMCs, which include lymphocytes and monocytes, play a key role in the immune response. The gene expression patterns in these cells can provide valuable insights into immune system activities and pathophysiological states.

The dataset was generated using 3’-tagged bulk RNA sequencing technology, capturing a broad spectrum of gene expression in PBMCs from diverse clinical samples. The protocol was adapted from mcSCRB-seq The library preparation for our RNA-Seq dataset is based on a 3'-tagged bulk RNA-Sequencing protocol, adapted from mcSCRB-seq (Bagnoli et al.). This method incorporates unique molecular identifiers (UMIs), pool barcodes, and sample barcodes. UMIs are crucial for accurately quantifying transcript abundance, as they enable the differentiation of PCR duplicates from unique mRNA molecules. Pool barcodes facilitate multiplexing of several samples in a single sequencing run, enhancing throughput efficiency. Sample barcodes are used to track individual samples, ensuring precise sample identification and data integrity.

The dataset is instrumental for research in immunology and systemic diseases, offering a unique perspective on how PBMC gene expression varies in different clinical scenarios. It serves as a critical resource for understanding immune responses and developing therapeutic strategies.

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
#### Sample Collection and Handling
A blood sample of 8 ml for PBMC isolation is taken from each participant during the visit to the clinical testing center. Fasting is not required. The samples are kept at room temperature until processing, and then processed to isolate PBMCs.

#### RNA Extraction
RNA is extracted from the isolated PBMCs using a specific RNA extraction kit, following the manufacturer's protocol. This includes cell lysis, RNA purification, and checking the integrity of RNA.

#### Library Preparation
For library preparation, the 3'-tagged bulk RNA-Seq approach from mcSCRB-seq is used. This involves adding UMIs for accurate transcript counting, pool barcodes for sample multiplexing, and sample barcodes for individual sample tracking (Figure 1). 

#### Addition of External RNA Controls Consortium (ERCC) spike-ins
ERCC spike-ins are a mixture of known artificial RNA sequences. These spike-ins serve as internal controls to calibrate and assess the performance of the RNA-Seq experiment. By including ERCC spike-ins, we can monitor the efficiency of library preparation, sequencing, and data normalization, ensuring the accuracy and reliability of the gene expression data. 

#### Addition of PhiX
PhiX is a bacteriophage genome used as a control in Illumina sequencing runs. It provides a quality control measure for the sequencing process, as it helps in monitoring sequencing error rates and assessing run quality. Including PhiX in the library ensures a balanced base composition, especially important in RNA-Seq libraries that might have AT or GC bias, thus enhancing the accuracy of sequencing results.

#### Sequencing
The prepared libraries are sequenced on an Illumina NovaSeq platform. 66 bp are sequenced from the transcripts, as well as barcodes and adapters.

![library structure](library_structure.png)

Figure 1: library structure

### Data availability 
<!-- for the example notebooks -->
- All tabular information is stored in a main parquet file: `rna_seq.parquet`
- Read counts are stored in long-format parquet files per batch
- Each sequencing batch includes metadata parquet, JSON and HTML files

### Summary of available data 
<!-- for the data browser -->
Coming soon

### Relevant links

* Pheno Knowledgebase: https://knowledgebase.pheno.ai/datasets/024-rna_seq.html