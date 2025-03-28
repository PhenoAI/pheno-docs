# Blood tests dataset

### Description 

The lab tests in this dataset of the Human Phenotype Project are based on tests performed to participants in the community as part of their regular medical care at their HMO (Health Maintenance Organization). Participants are asked to upload their blood/urine tests done at their HMOs from previous years. These tests range from the very common CBC and chemistry tests, vitamins levels and other laboratory tests.

### Introduction 

Laboratory (Lab) tests are often used in health care to determine physiological and biochemical states, such as disease, mineral content, pharmaceutical drug effectiveness, and organ function. The lab tests in this data set of the Human Phenotype Project are based on tests performed to participants in the community as part of their regular medical care at their HMO.
Following registration and follow-up calls or visits the participants receive an email asking for and providing instructions on how to upload their lab test results. The participants are provided with a list of recommended tests to upload (specified in the list below) and the recommended time window for some tests (last 3 months or from the previous one year).  Each participant uploads blood tests that were done throughout the years with their HMO. Upon upload, the file is analyzed based on its format, and all readable tests that can be extracted are uploaded to a PostgreSQL database. 

Note that this data is created by the users own volition and the tests are done independent of their visits to the clinical testing  center (CTC). 

#### List of recommended tests for upload:

##### Tests recommended from previous year:
HbA1C%, tota cholesterol, HDL, LDL, Triglycerides.
##### Tests recommended from the last 3 months:
Creatinine, Glucose, CBC (WBC, RBC, Hemoglobin, Hematocrite, Platelets, MCV, MCH, MCHC, RDW, Mean Platelet Volume, Neutrophils%, Lymphocytes%, Monocytes%, Eosinophils%, Basophils%)
##### Tests without time  recommendation:
TSH, CRP, Albumin, Total Protein, Bilirubin, AST-GOT, ALT-GPT, GGT, Alkaline phosphatase, Sodium, Potassium, Chloride, Calcium, Phosphor, Uric acid, B12, Vitamin D, Folic acid and Ferritin.

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
Every blood/urine test has its own measurement protocol.
* Some blood tests require the participant itself to act differently prior to the test - whether it’s fasting, drinking concentrated glucose/lactose, sampling urine etc.
* The technician has also a large part of the test, by selecting relevant buffers for every one of the tests and have it’s own complete protocol per test.
* And the lab - each HMO would have their own storing protocols, measuring with different machines with different sensitivity thresholds and their own standards (usually aligned between different HMO, but not necessarily).

### Data availability 
<!-- for the example notebooks -->
The information is stored in 1 parquet file `blood_tests.parquet`.

### Summary of available data 
<!-- for the data browser -->
All the participant provided blood tests are stored in a single .parquet file. Each row depicts a single test done (either blood or urine) for an individual. It consists of the test’s name, unit, date and value (split into 2 columns - continuous and categorical) with some extra metadata columns.

The duplicate value columns are an artifact of some tests having both float variables and notes from the HMOs instead of continuous values. We represent these notes as categorical values such as “value under detectable threshold” or “toxic levels” etc (e.g. urine microalbumin mostly contains float values, but it can also have “threshold under 3mg/l” in the categorical column). These notes are not values per-se, and replacing them with continuous values is not straightforward but they should be considered nonetheless.

### Relevant links

* [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/016-blood_tests.html)
* [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/16)
