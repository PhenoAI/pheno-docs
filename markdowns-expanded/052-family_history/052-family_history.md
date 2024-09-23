# Family history

### Description 

Family history information in medical research involves collecting data on genetic and hereditary conditions passed down through generations. This includes predispositions to diseases such as cancer, cardiovascular conditions, diabetes, and mental health disorders, helping identify potential health risks based on familial patterns.

### Introduction

The Human Phenotype Project conducts comprehensive data collection through online surveys, where participants voluntarily provide information on various aspects influencing their health. This includes information about a participant's family history, captured through two lifestyle surveys and the Initial Medical Survey.

### Measurment protocol 
<!-- long measurment protocol for the data browser -->
These lifestyle surveys are modeled after the UK Biobank's touch screen questionnaire. Participants receive the full version via email to complete on the Zoho platform, either before or after their baseline visit. A shorter, follow-up version of the questionnaire is then filled out by participants during subsequent visits. 

### Data availability 
<!-- for the example notebooks -->
The information is stored in 2 parquet files:  `initial_medical.parquet` and `ukbb.parquet`. The ukbb.parquet contains questions asked in our lifestyle surveys at the baseline and follow up stages.

### Summary of available data 
<!-- for the data browser -->
1. Initial Medical Survey: A DataFrame containing tabular features representing responses related to family medical history from the initial medical survey.
2. Lifestyle Survey: A DataFrame containing tabular features representing responses related to family medical history from the lifestyle survey.

### Relevent links

* Pheno Knowledgebase: https://knowledgebase.pheno.ai/datasets/052-family_history.html
