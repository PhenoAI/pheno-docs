# Sociodemographics

### Description

Sociodemographic data encompasses social, economic, and demographic characteristics of study participants that influence health outcomes and provide important context for interpreting health data. This includes information about ancestry and migration history, education, employment, household composition, living conditions, and socioeconomic status. These factors are essential for understanding health disparities, environmental exposures, and social determinants of health.

### Introduction

The Human Phenotype Project conducts comprehensive data collection through online surveys, where participants voluntarily provide information on various aspects influencing their health. This includes sociodemographic data, captured through two lifestyle surveys (Inital UKBB and Follow-up UKBB survey) and the Initial Medical Survey.

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
These lifestyle surveys are modeled after the UK Biobank's touch screen questionnaire. Participants receive the full version via email to complete on an online platform, either before or after their baseline visit. A shorter, follow-up version of the questionnaire is then filled out by participants during subsequent visits. 

### Data availability 
<!-- for the example notebooks -->
The information is stored in 2 parquet files: `initial_medical.parquet`  and `ukbb.parquet` which contain the different data sources respectively the Initial Medical Survey and the  two lifestyle surveys (Inital UKBB and Follow-up UKBB survey).

### Summary of available data 
<!-- for the data browser -->
The sociodemographic dataset includes comprehensive information organized into several categories:

**Ancestry and Migration:**
- Participant's country of birth and year of immigration (aliya)
- Parents' countries of birth
- Grandparents' countries of birth (both maternal and paternal sides)

**Education and Qualifications:**
- Highest level of education attained
- Professional qualifications
- Age at completion of full-time education

**Employment:**
- Current employment status
- Duration in main current job (years and months)
- Length of working day
- Job characteristics (walking/standing, manual labor, shift work, night shifts)
- Commuting patterns (frequency, transport type, distance, duration)
- Remote work frequency

**Household and Living Conditions:**
- Type of accommodation
- Heating and air conditioning availability
- Length of residence at current address
- Household size and relationships between household members
- Number of vehicles in household
- Current and past pet ownership (type of pets)
- Residence area type (urban/rural)
- Assisted living status

**Socioeconomic Status:**
- Average total household income after tax
- Extra domestic job hours

**Family Connections:**
- Family members participating in the study (participant IDs and relationship degrees)
- Household members participating in the study

**Military Service (for Israeli population):**
- Past military service
- Position and duration of service

This comprehensive sociodemographic data enables researchers to examine how social and economic factors interact with health outcomes and to account for these variables in analyses.

### Relevant links

- [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/053-sociodemographics.html)
- [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/53)
