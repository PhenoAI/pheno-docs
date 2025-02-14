# Gut microbiome dataset  

Metagenomics is the study of genetic material from environmental samples, including microbial communities. It involves sequencing the DNA of all microorganisms in the sample, rather than isolating individual organisms. Metagenomics enables the identification and functional analysis of microorganisms in diverse environments, including soil, water, and the human body.

This dataset maps out the human gut microbiota per participant via shotgun metagenomic sequencing given stool samples. It is then compared to known references of gut flora to measure prevalence of specific microbes.

Gut microbiome metagenomics can be used to identify potential biomarkers of disease, develop personalized treatment strategies, and better understand the complex relationship between the gut microbiota and human physiology. It has already been providing insights into the role of gut microbes in various diseases such as obesity, diabetes and IBD.

To measure the genetic makeup of the human gut flora given stool samples via metagenomics, the following steps done:

1. Collection of stool sample: For each visit, a stool sample is collected from the individual and stored appropriately to preserve the microbial community.
2. DNA extraction: DNA is extracted from the stool sample using specialized techniques to isolate the microbial DNA from other materials present in the sample.
3. DNA fragmentation and sequencing: The extracted DNA is then fragmented into small pieces and sequenced using high-throughput sequencing technologies.
4. Quality control: The resulting raw sequencing data is then pre-processed, removing low-quality reads and artifacts of the sequencing methodology.
5. Taxonomic classification: The processed sequencing data is then compared to databases of known microbial sequences to identify and classify the microbial species presence and their respective abundances in the sample.

### Data availability:
The information is stored in multiple parquet files:

- `gut_microbiome.parquet`: Sequencing and QC statistics.
- `urs`: Segal Lab relative abundance.
- `metaphlan_*`: 8 tables with MetaPhlAn 4 relative abundances, separated by taxonomic levels.
