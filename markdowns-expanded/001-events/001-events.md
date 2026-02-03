# Events  

### Description 

Information on calls and visits to the clinical testing center of the Human Phenotype Project study participants.

### Introduction

The events dataset captures the temporal structure of the Human Phenotype Project, recording all interactions and visits participants have with the study over time. This longitudinal tracking is essential for understanding when measurements were taken and how participants' health evolves throughout the study.

The Human Phenotype Project is designed as a long-term longitudinal study with planned follow-up over many years. Participants initially visit the clinical testing center for comprehensive baseline assessments, and then return for follow-up visits and calls at regular intervals. Each event record includes:

- **Visits to the clinical testing center:** When participants come in person for measurements, tests, and sample collection
- **Follow-up calls:** Phone-based check-ins to update medical information and track health changes
- **Age at assessment:** Calculated from date of birth to the event date, crucial for age-adjusted analyses
- **Research stage:** Identifies whether the event is baseline, first follow-up, second follow-up, etc.

This temporal framework enables researchers to:
- Track changes in health status over time
- Link measurements taken at the same visit across different modalities
- Calculate time-varying variables such as age at measurement
- Study disease progression and health trajectories
- Assess the impact of interventions or life events on health outcomes

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
Upon registration to the Human Phenotype Project, people are assigned with a registration code, which is their ID in the study and provide a telephone number and email by which all communications are conducted. Participants are asked about their date of birth and their sex, and are asked to schedule a visit to the assessment center.

Personal and communication data is saved separately in a secure environment from the population characteristics information, which is saved with the participant designated ID.


### Data availability
<!-- for the example notebooks -->
- events.parquet - contains information regarding participant visits and calls and study_ids.

### Summary of available data 
<!-- for the data browser -->
1. Participant ID - assigned to participants upon registration.
2. Study ID - the ID of the study.
3. Visit dates - dates of calls/visits to the assessment center.
4. Date of birth - only month and year of birth should be available.
5. Sex of the participants.
6. Age at research stage - calculated age of the participant at each research stage/event.

### Relevant links

- [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/001-events.html)
- [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/1)
