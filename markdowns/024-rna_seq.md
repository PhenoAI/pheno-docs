# RNA-Seq dataset

The RNA-Seq dataset includes bulk gene expression profiles measured in human peripheral blood mononuclear cells (PBMC) cells, sampled at each visit to the clinical testing center.

RNA sequencing (RNA-Seq) is a powerful high-throughput technique used to analyze the transcriptome, providing a snapshot of RNA presence and quantity in a biological sample at a given moment. Our bulk approach sequences RNA from a mixed population of cells, giving a cumulative overview of gene expression across the sample. It's widely used for understanding complex biological processes and disease mechanisms.

This RNA-Seq dataset focuses on gene expression profiles in human peripheral blood mononuclear cells (PBMC), collected during patient visits to a clinical testing center. The aim is to uncover the gene expression dynamics in PBMCs under various clinical conditions. PBMCs, which include lymphocytes and monocytes, play a key role in the immune response. The gene expression patterns in these cells can provide valuable insights into immune system activities and pathophysiological states.

The dataset was generated using 3’-tagged bulk RNA sequencing technology, capturing a broad spectrum of gene expression in PBMCs from diverse clinical samples. The protocol was adapted from mcSCRB-seq The library preparation for our RNA-Seq dataset is based on a 3'-tagged bulk RNA-Sequencing protocol, adapted from mcSCRB-seq (Bagnoli et al.). This method incorporates unique molecular identifiers (UMIs), pool barcodes, and sample barcodes. UMIs are crucial for accurately quantifying transcript abundance, as they enable the differentiation of PCR duplicates from unique mRNA molecules. Pool barcodes facilitate multiplexing of several samples in a single sequencing run, enhancing throughput efficiency. Sample barcodes are used to track individual samples, ensuring precise sample identification and data integrity.

### Data availability:

- All tabular information is stored in a main parquet file: `rna_seq.parquet`
- Read counts are stored in long-format parquet files per batch
- Each sequencing batch includes metadata parquet, JSON and HTML files
