# Medical procedures

### Description

The medical procedures dataset captures comprehensive information about surgical interventions, diagnostic tests, and medical procedures that participants have undergone throughout their lives. This includes the type of procedure performed and the year it occurred, providing a detailed medical intervention history for each participant.

### Introduction

The Human Phenotype Project study gathers medical data through online surveys where participants self-report their use of medical procedures. This approach relies on individuals to communicate their experiences with medical interventions. Accurate and comprehensive information about the utilization of these procedures is crucial for grasping their actual effects on personal health.

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
During the registration phase of the study, participants are required to provide details about their medical procedures in the Initial Medical Survey. Further data is then gathered in the Follow-up Medical Survey when participants return for subsequent visits.

### Data availability 
<!-- for the example notebooks -->
The information is stored in 2 parquets file: `initial_medical.parquet`, `follow_up_medical.parquet`

### Summary of available data 
<!-- for the data browser -->
The dataset includes comprehensive information about medical procedures categorized into several groups. The following are examples of the types of procedures tracked (many additional procedures are also recorded):

**Surgical Procedures (examples):**

- Appendectomy, cholecystectomy, tonsillectomy, adenoidectomy

- Thyroidectomy (total or partial)

- Hysterectomy, oophorectomy, myomectomy, conization of cervix

- Prostatectomy, varicocele or hydrocele repair, nephrectomy

- FESS (Functional Endoscopic Sinus Surgery)

- Cataract surgery

- Cesarean section

- Endometriosis surgery

- Trauma-related surgery, orthopedic surgery

- Splenectomy

- BCC or SCC resection

- Meningioma resection

- Ablation of atrial fibrillation or flutter

- Plastic surgery

**Diagnostic and Therapeutic Procedures:**

- Resting and stress echocardiography

- Ergometric stress testing

- Myocardial perfusion imaging

- Cardiac catheterization

- Carotid ultrasound

- Cardiac CT and MRI

- Brain imaging (CT or MRI)

- Pulmonary function tests

- Mole biopsy

**Other Medical Interventions:**

- Fertility treatments

- Triple antibiotic treatment

- Hospitalization records (frequency and timing)

Each procedure record includes the year of occurrence, allowing for temporal analysis of medical interventions throughout a participant's life.

### Relevant links

- [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/050-medical_procedures)
- [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/50)