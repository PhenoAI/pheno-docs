# Oral microbiome dataset  

The primary intent behind collecting buccal swabs was to explore human genetics. Concurrently, it yielded metagenomic data, unveiling the microbial community within the oral cavity. 

This data illuminates the diversity and interactions of microorganisms, specifically in the buccal mucosa. Delving into the oral microbiome presents an opportunity to understand its linkage to health conditions. For instance, an imbalanced oral microbiome can lead to periodontal disease, associated with an increased risk of cardiovascular diseases. Moreover, alterations in the oral microbiome have been observed in oral cancers, hinting at its potential role in their onset and progression​ [The oral microbiome: diversity, biogeography and human health](https://www.nature.com/articles/s41579-023-00963-6)​. 

Through this data, the exploration into possible connections between oral microbial composition and various health conditions is facilitated, marking a step towards understanding the broader health implications.



### Data availability:
The information is stored in multiple parquet files:
- `oral_microbiome.parquet`: Sequencing and QC statistics.
- `metaphlan_*`: 8 tables with MetaPhlAn 4 vJan21 relative abundances, separated by taxonomic levels.
- `humann_aggregated_*`: arrow files of either gene level abundances or pathway level abundances+coverage from HumanN 3.6 given MetaPhlAn 4 vJan21 outputs