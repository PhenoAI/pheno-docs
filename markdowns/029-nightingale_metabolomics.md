# Nightingale Metabolomics

The dataset, derived from Nightingale Health's metabolic profiling of blood serum samples, presents an extensive array of metabolites, encapsulating lipids, fatty acids, amino acids, and various low-molecular-weight metabolites. Utilizing innovative Nuclear Magnetic Resonance (NMR) technology, the dataset unveils a spectrum of 250 biomarkers, 39 of which are clinically validated, offering a profound insight into the metabolic mechanisms underlying health and disease. At this stage the dataset contains 1700 participants.

### Data availability:

At this point we only processed 1700 participants

The information is stored in 3 parquet file:
1. Results - nightingale_metabolomics.parquet - quantification of metabolites in blood sample.
2. Tags per Sample - tag_per_sample.parquet - boolean value whether the sample has any tags
3. Tag per Biomarker - tags_per_biomarker.parquet - categorical tags per metabolite per sample

And 2 annotation csv files:
- Biomarker annotations - biomarker_annotation.parquet 
- Tag annotations - tag_annotation.parquet
