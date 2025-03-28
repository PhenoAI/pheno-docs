# Serum lipidomics dataset  

### Description

High throughput untargeted lipidomics in serum by Ultra-High-Performance Liquid Chromatography Electrospray ionization High-resolution mass spectrometry (UHPLC-ESI-HRMS).

### Introduction

The serum metabolome is known to represent a variety of environmental, genetic and other endogenous factors (Bar et al. 2020). Lipidomics is a subfield of metabolomics, which is defined as the study of pathways and networks of cellular lipids in biological systems. Lipids perform various functions within the body, from structural components of cell membranes, to energy reserve and regulating hormones. These pivotal functions highlight circulating lipids as playing a key role in a number of age-related diseases such as cardiovascular disease and stroke (Holmes et al. 2018; Michos et al. 2019). 

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
The data acquisition process can be broken down into these three main stages:
1. Sample preparation and experimental design, performed by the wet lab at Weizmann
2. Operating the MS machines to obtain the raw spectral data, performed by the Weizmann service unit
3. Processing the raw spectral data to obtain the final format for research, performed by the computational lab at Weizmann

#### Sample preparation and experimental design

The process starts with drawing blood from the participants during their visit to the assessment center (see Sample inventory for details). Serum is extracted from the sample and is aliquoted into 5 smaller tubes. All the barcodes mapping are currently documented in the LabCollector.
The team at the wet lab performs the sample preparation and samples are arranged in working plates of size 96.
Every plate contains 92 samples from study participants, and 4 QC samples that will be used for systematic bias correction. The QC includes two types:
1. Empty well for blank (position 93 in the plate)
2. Anchor sample - this is a sample that was pooled from a large number of study participants, and is used as validation for the statistical correction methods. Same sample is used repeatedly. (position 94 in the plate)
3. Two NIST samples - these are standardized technical replicates that contain a predefined mixture of human serum metabolites. These samples are later used for running order and batch correction of the data. (positions 95-96 in the plate)

For every plate, the team at the wet lab produces an experimental design file that describes the layout for the analysis of the plate. Mainly, it describes the ordering of the samples to be injected into the MS machine, including the various sample types (10K, empty, NIST, anchor), the tube barcode, their quantity and location. Systematic removal of technical noise is partly performed based on this experimental design file.

#### Operating the MS machines to obtain the raw spectral data

The service unit in Weizmann is responsible to operate the MS machines in order to profile the samples. According to the service unit staff, initial QC checks are performed after the injection of every plate, making sure that internal standards are identifiable, and that the sensitivity of the MS machine is within reasonable limits.

#### Processing the raw spectral data to obtain the final format for research

Lipid annotations were obtained by comparing the mz, retention times and ccs values to equivalent empirical measurements from a library that was profiled on the same instruments with longer running times (26 minutes).

### Data availability 
<!-- for the example notebooks -->
The information is stored in 1 parquet file: `serum_lipidomics.parquet`

### Summary of available data 
<!-- for the data browser -->
1. Raw spectral data per sample in open source format (mzML).
2. All features of processed data (systematic error removed, batch corrected, plates merged).
3. Annotated processed features.
4. Clustered processed features.

### Relevant links

* [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/008-serum_lipidomics.html)
* [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/8)