# Curated Phenotypes

### Description 

Curated phenotypes are algorithmically-defined health conditions and traits derived from the rich, multi-modal data collected in the Human Phenotype Project. These phenotypes are created by integrating multiple data sources including clinical measurements, laboratory tests, imaging data, questionnaires, medical history, and other assessments to provide robust definitions of diseases and health states. Each curated phenotype follows evidence-based criteria and clinical guidelines to ensure accurate classification of participants' health status.

### Introduction

The Human Phenotype Project includes curated phenotypes for major health conditions across multiple domains:

#### Metabolic Conditions

- **Abdominal Adiposity:** Increased abdominal obesity is a hallmark of fat or adiposity-related metabolic dysfunction.

- **BMI and Obesity:** Overweight and obesity are associated with morbidity and mortality can lead to significant social and psychological challenges for individuals, including stigma, discrimination, and increased risk of mental health issues such as depression and low self-esteem.

- **Diabetes:** Type 2 Diabetes (T2D) is a health condition characterized by blood sugar levels that are higher than normal, whereas in prediabetes blood sugar levels are not high enough yet to be classified as T2D.

- **Hyperlipidemia:** Lipoproteins are complexes of lipids and proteins that are essential for transport of cholesterol, triglycerides (TGs), and fat-soluble vitamins in the blood. Disorders of lipoprotein metabolism include primary and secondary conditions that substantially increase or decrease specific circulating lipids (e.g., cholesterol or TGs) or lipoproteins (e.g., low density or high density lipoproteins).

- **MAFLD:** Metabolic (dysfunction) Associated Fatty Liver Disease / Non-alcoholic Fatty Liver Disease (NAFLD) was described as an excessive fat infiltration of the liver in the absence of significant alcohol consumption or other causes of liver disease.

#### Cardiovascular Conditions

- **Hypertension:** Hypertension is the most common reason for office visits and for the use of chronic prescription medications. Roughly one-half of hypertensive individuals do not have adequate blood pressure control.

- **Ischemic Heart Disease:** Ischemic heart disease (IHD), also referred to as coronary heart disease (CHD), is the term associated with an inadequate supply of blood to the myocardium due to obstruction of the epicardial coronary arteries, usually from atherosclerosis.

#### Kidney Disease

- **CKD:** Chronic Kidney Disease includes a range of pathophysiologic processes associated with abnormal kidney function and a progressive decline in glomerular filtration rate (GFR).

#### Neurological and Psychiatric Conditions

- **ADHD:** Attention deficit hyperactivity disorder (ADHD), one of the most common neuropsychiatric disorders of childhood and adolescence, often persists into adulthood.

- **Anxiety:** People with anxiety disorders frequently have intense, excessive and persistent worry and fear about everyday situations.

- **Depression:** Depression is a constellation of symptoms and signs that may include depressed mood.

- **Migraine:** Migraine is an episodic disorder that manifests in a severe headache generally associated with nausea and/or light and sound sensitivity.

#### Sleep Disorders

- **OSA:** Obstructive Sleep Apnea is a disorder that is characterized by obstructive apneas, hypopneas, and/or respiratory effort-related arousals caused by repetitive collapse of the upper airway during sleep.

- **Sleep Quality:** Sleep is considered a restorative process that allows for energy renewal and also for cellular. Low sleep quality may lead to accelerated aging by triggering DNA damage and chronic inflammation to influence the compensatory/resiliency systems of the human body.

#### Musculoskeletal Conditions

- **Sarcopenia:** Sarcopenia is a syndrome characterized by the loss of muscle mass, strength, and performance.

- **Osteoporosis:** Osteoporosis is characterized by low bone mass, microarchitectural disruption, and skeletal fragility, resulting in decreased bone strength and an increased risk of fracture.

#### Women's Health

- **Endometriosis:** Endometriosis is a gynecological disease defined as endometrial glands and stroma that occur outside the uterine cavity.

- **Menopause:** Natural menopause is defined as the permanent cessation of menstrual periods, determined retrospectively after a woman has experienced 12 months of amenorrhea without any other obvious pathologic or physiologic cause.

#### Cancer

- **NMSC:** Nonmelanoma Skin Cancers are a group of cancers that arise from the skin but do not include melanoma. The most common types of nonmelanoma skin cancer are basal cell carcinoma (BCC) and squamous cell carcinoma (SCC).

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
Curated phenotypes are not directly measured but are derived through algorithmic integration of multiple data sources collected in the Human Phenotype Project. The curation process involves:

1. **Data Integration:** Combining relevant measurements from various modalities (e.g., blood tests, imaging, questionnaires, clinical assessments)

2. **Clinical Criteria Application:** Applying established clinical diagnostic criteria and guidelines for each condition

3. **Algorithm Development:** Creating data-driven algorithms that identify individuals meeting criteria for specific phenotypes

4. **Validation:** Validating phenotype definitions against known diagnoses and clinical assessments

5. **Quality Control:** Ensuring consistency and accuracy of phenotype assignments across the cohort

Each phenotype uses specific combinations of available data types relevant to that condition. For example:

- Diabetes phenotypes use blood glucose, HbA1c, CGM data, medications, and self-reported diagnoses
- Cardiovascular phenotypes integrate blood pressure, ECG, imaging, blood tests, and medical history
- Liver phenotypes combine liver ultrasound, blood tests, and clinical assessments

### Data availability 
<!-- for the example notebooks -->
Curated phenotypes are provided as derived datasets that indicate presence, absence, or severity of specific conditions for each participant. The data is typically stored in parquet files with phenotype assignments linked to participant IDs and research stages, enabling longitudinal tracking of health status changes over time.

### Summary of available data 
<!-- for the data browser -->
The curated phenotypes dataset includes algorithmically-defined classifications for major health conditions and traits:

**Metabolic Conditions:**

- **BMI and Obesity:** Body mass index categories and obesity status based on anthropometric measurements

- **Diabetes:** Type 2 diabetes and prediabetes status derived from glucose levels, HbA1c, CGM data, and medications

- **Hyperlipidemia:** Lipid disorders identified through blood lipid panels and lipoprotein profiles

- **MAFLD:** Metabolic-associated fatty liver disease based on liver ultrasound and metabolic markers

- **Abdominal Adiposity:** Increased abdominal fat based on body composition measurements

**Cardiovascular Conditions:**

- **Hypertension:** High blood pressure classifications from multiple blood pressure readings

- **Ischemic Heart Disease:** Coronary heart disease identified through clinical history, tests, and procedures

**Kidney Disease:**

- **CKD:** Chronic kidney disease stages based on estimated glomerular filtration rate and kidney function tests

**Neurological and Psychiatric Conditions:**

- **ADHD:** Attention deficit hyperactivity disorder based on standardized questionnaires

- **Anxiety:** Anxiety disorders derived from psychological health assessments

- **Depression:** Depressive symptoms and disorders from mental health questionnaires

- **Migraine:** Migraine headache patterns from symptom reports

**Sleep Disorders:**

- **OSA:** Obstructive sleep apnea based on home sleep study results and respiratory indices

- **Sleep Quality:** Sleep quality metrics from sleep monitoring and questionnaires

**Musculoskeletal Conditions:**

- **Sarcopenia:** Age-related muscle loss identified through body composition and grip strength

- **Osteoporosis:** Low bone density from DXA scans and fracture risk assessment

**Women's Health:**

- **Endometriosis:** Endometriosis diagnosis from medical history and procedures

- **Menopause:** Menopausal status and transition based on reproductive history and hormonal changes

**Cancer:**

- **NMSC:** Nonmelanoma skin cancers (basal cell and squamous cell carcinoma) from medical history

Each phenotype provides a binary classification (presence/absence), and where applicable, severity grades or continuous measures. The phenotypes are updated as new data becomes available during longitudinal follow-up.