# Medical conditions dataset  

### Description 

A medical conditions dataset is a collection of information about various health-related issues experienced by people. This data can include symptoms, diagnoses, treatments, and outcomes for different diseases and conditions. The dataset is gathered using various methods, or "modalities," such as electronic health records, surveys, wearable devices, and medical imaging. The purpose of collecting and analyzing this information is to better understand health trends, identify risk factors, and improve medical care for everyone.

### Introduction

Medical diagnosis in research studies plays a crucial role in the understanding and advancement of medicine. In clinical research, the process of diagnosis is used to identify individuals with specific medical conditions and to determine the prevalence of these conditions within a study population. Diagnosis is also used to identify subgroups of individuals with similar characteristics or outcomes, which can help researchers to better understand the underlying disease mechanisms and to develop risk models, identify biomarkers for early detection of the disease and for monitoring its progress and to develop  new treatments.

Survey data is a valuable resource for understanding various aspects of medical conditions. It involves collecting self-reported information from individuals about their health, symptoms, diagnoses, treatments, and lifestyle factors. This data is tabular, meaning it is organized in rows and columns, which makes it easy to analyze and compare.

Medical conditions data collected through surveys covers diverse body systems, such as the cardiovascular, respiratory, digestive, and nervous systems. It provides insights into disease prevalence, risk factors, and the impact on individuals' lives.

Surveys are an attractive data modality due to their accessibility, cost-effectiveness, and ability to capture patient perspectives. This information helps researchers identify potential risk factors, inform prevention strategies, and shape public health policies, ultimately contributing to better health outcomes for diverse populations.

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
Upon registration to the Human Phenotype Project study, participants provide details about their medical conditions in the Initial Medical Survey. Further data is then gathered during an interview at the baseline visit (In-system drop down) and using the Follow-up Medical Survey when participants return for subsequent visits. The data source columns indicate where information was collected.

Questions and self-reported medical diagnoses were mapped to ICD-11 codes. Medical diagnoses at baseline were determined as diagnoses that were reported at the baseline visit or with an onset date prior to the baseline visit.

#### Baseline
*  Participants fill in medical conditions history in the Initial Medical Survey.
*  Interviewer asks participant question and fill in a drop down list of different conditions participants have (In-system drop down).

#### Every follow up visit/ call and baseline
* Follow-up Medical Survey -
    * Medical questionnaire asks about conditions.
    * Should fill in the date when new condition was founded .

### Data availability 
<!-- for the example notebooks -->
The information is stored in 1 parquet file: `medical_conditions.parquet` 

### Summary of available data 
<!-- for the data browser -->
1. Medical conditions of participants at various research stages.

### Relevant links

* [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/021-medical_conditions.html)
* [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/21)
