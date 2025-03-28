# Carotid ultrasound dataset  

### Description 

Carotid intima–media thickness computed from carotid ultrasound imaging.

### Introduction

Carotid intima-media thickness (CIMT) measurement is an ultrasound-based technique used to assess the thickness of the innermost two layers of the carotid artery, known as the intima and media. These layers can become thickened due to atherosclerotic processes or due to age. The thickening of the intima-media layer can be throughout the length of the artery (increased IMT) or as local accumulation of fatty deposits that penetrate into the vessel interior known  as plaques. Advanced plaques can cause stenosis of the artery. Carotid IMT is increasingly used as an indicator of early atherosclerosis and a predictor for cardiovascular events and can be used for identifying asymptomatic patients at high risk who might be candidates for more intensive medical interventions. Measurement of CIMT with B-mode ultrasound is a noninvasive, sensitive, and reproducible technique for identifying and quantifying subclinical vascular disease and for evaluating CVD risk.

The ultrasound probe is placed on the skin over the carotid artery and high-frequency sound waves are used to produce images of the artery. These images are then analyzed using an automatic detection algorithm to measure the thickness of the intima and media layers. 

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
Carotid US was performed using the Supersonic Aixplorer MACH 30 (Hologic, USA). Carotid Intima Media (CIMT) was measured using the L10-2 transducer from both carotid arteries while the subject in supine position with head rotated to the opposite side of the measured artery. Evaluation was performed using an automatic computerized system (Aixplorer Mach 30). The intima and media are automatically traced within the box of interest. Mean CIMT was recorded over a length of 1 cm at the far wall of each carotid artery. One measurement was obtained from each carotid artery. Only parts of the carotid artery without plaques were included in the IMT analysis.

![IMT example](imt_lt_sample.png)

### Data availability 
<!-- for the example notebooks -->
The information is stored in 1 parquet file: `carotid_ultrasound.parquet`

### Summary of available data 
<!-- for the data browser -->
1. Ultrasound images of the left and right carotid arteries.
2. Right and left Intima Media Thickness
3. Percentages of the box of interest for which the IMT is calculated

### Relevant links

* [Pheno Knowledgebase](https://knowledgebase.pheno.ai/datasets/012-carotid_ultrasound.html)
* [Pheno Data Browser](https://pheno-demo-app.vercel.app/folder/12)