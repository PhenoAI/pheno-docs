# Medications

### Description 

The Human Phenotype Project study medications data is based on self reported, participant provided information.
Some of the Self-reported medications are coded to Anatomical Therapeutic Chemical (ATC) codes from the WHO Collaborating Centre for Drug Statistics Methodology. The ATC classification system has become the gold standard for international drug utilization monitoring and research. 

### Introduction

Medication usage reporting in medical research and in longitudinal cohort studies is a key aspect of understanding the effectiveness, safety and biological interactions of different drugs. Medication usage data can help researchers to better understand how different medications affect individually different populations or different organ systems based on the specific genetics, environment, lifestyle and medical history of the individual. For example, the specific individual’s microbiome population can be strongly influenced by the drugs consumed on one hand and can have a strong effect on the drugs metabolism and absorption on the other hand. Interaction between drugs is another aspect that can affect the treatment efficacy.

There are different methods for collecting medication usage data in research studies, such as self-report, use of medical records, pill count, and electronic monitoring. Self-report is when the participant reports the use of medication to the researcher. Having accurate and complete data on medication usage is essential to understanding the true impact of these medications on individuals' health. 

The medication information collection in the Human Phenotype Project study is based on self reporting of medications usage via online and smartphone applications and collection by staff members by telephone or face-to-face interviews during follow-up. 

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
Currently, there are several origins for the medication data:
1. During registration (sign up) to the study, participants are asked to report their regular medications online (autofill), selecting from a predefined drop-down list (Updated Clalit db). The medication responses are stored in the 10k medical database. A medication corresponding to exclusion criteria triggers cessation of the questionnaire and exclusion message. For a while, about a year, the data was not saved. Status: at this point only this data available for users
2. Initial Questionnaire also contains some medication related questions (see detailed list in “data source section”).
3. Participants can log the medications taken and the consumption time using a dedicated mobile app ”Project 10k”. They requested to log during the two weeks period following each visit.
4. On follow up stages calls or visits to the clinical testing center - ​​participants are asked to report about any new medications they take or stopped taking and provide the month and year of when each medication was given or stopped. A staff member fills the  medications from a predefined dropdown list.
In case the staff member cannot find the exact medication in the list, they asked to log the missing medication using the app. There is also an option to free text. 

### Data availability 
<!-- for the example notebooks -->
- During registration (sign-up) for the study, participants are asked to report their regular medications online, with an autofill feature, selecting from a predefined drop-down list.
- During follow-up calls or visits, participants update their medication intake.
- App medication logging.

All three sources of data are stored in 1 parquet file: `medications.parquet`

### Summary of available data 
<!-- for the data browser -->
For now, we process the medications information from the different sources and use a translation into ATC codes.
We separate the medications into two datasets:
1. Medications at baseline.

### Relevant links

* [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/018-medications.html)
* [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/18)
