# Medications dataset

### Description 

The Human Phenotype Project medications dataset is based on self-reported, participant-provided information. Self-reported medications are coded to Anatomical Therapeutic Chemical (ATC) codes from the WHO Collaborating Centre for Drug Statistics Methodology. The ATC classification system is the gold standard for international drug utilization monitoring and research. 

### Introduction

Medication usage reporting in medical research and longitudinal cohort studies is essential for understanding drug effectiveness, safety, and biological interactions. Medication usage data helps researchers understand how different medications affect diverse populations and organ systems based on genetics, environment, lifestyle, and medical history. For example, an individual's microbiome composition can influence drug metabolism and absorption, while the drugs themselves can alter microbiome populations. Drug-drug interactions represent another critical factor that can affect treatment efficacy.

Multiple methods exist for collecting medication usage data in research studies, including self-report, medical records, pill counts, and electronic monitoring. Self-report involves participants directly reporting their medication use to researchers. Accurate and complete medication data is essential for understanding the true impact of pharmaceuticals on individual health.

The Human Phenotype Project collects medication information through self-reporting via online and smartphone applications, as well as through staff-administered questionnaires during telephone or in-person follow-up visits. 

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
Medication data is collected from multiple sources throughout the study:

1. **Registration:** During study enrollment, participants report their regular medications online by selecting from a predefined drop-down list with autofill functionality. Medications that meet exclusion criteria trigger automatic questionnaire termination with an appropriate message.

2. **Mobile application logging:** Participants can log medications and consumption times using a dedicated mobile application. Participants are requested to log medications during the two-week periods following each visit.

3. **Follow-up visits and calls:** During follow-up interactions at the clinical testing center or via telephone, participants report any new medications started or stopped, including the month and year of each change. Study staff members record this information using a predefined drop-down list. If a specific medication cannot be found in the list, staff can either log it through the mobile application or use a free-text entry option. 

### Data availability 
<!-- for the example notebooks -->
Medication data is collected from three sources:
- Registration medications: Reported during study sign-up via online questionnaire with autofill functionality
- Follow-up medications: Updates provided during follow-up calls or visits to the clinical testing center
- Application logging: Real-time medication logging through the mobile application

All medication data from these sources is stored in 1 parquet file: `medications.parquet`

### Summary of available data 
<!-- for the data browser -->
The medications dataset includes comprehensive information about participants' medication usage from multiple sources:

1. **Medications at baseline:** Medications that participants were taking at the time of enrollment or baseline visit
2. **Medication changes during follow-up:** New medications started or stopped during longitudinal follow-up
3. **App-logged medications:** Real-time medication logging through the mobile application during the two-week periods following visits
4. **ATC coding:** Many medications are coded using the Anatomical Therapeutic Chemical (ATC) classification system for standardized analysis

The data includes medication names, start and stop dates (month and year), and the source of information (registration, follow-up visit/call, or app logging). This comprehensive medication tracking enables research into drug-disease associations, polypharmacy patterns, and medication adherence over time.

### Relevant links

* [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/018-medications.html)
* [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/18)
