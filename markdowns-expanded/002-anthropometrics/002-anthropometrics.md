# Anthropometrics dataset 

### Overview <!-- short description for the example notebooks -->

Anthropometrics is the study of the measurement of the human body in terms of the size, weight, and proportions of its various parts. Anthropometrics is an important tool in the field of medicine, as it allows for the assessment of a person's health and nutritional status, as well as the identification of potential health risks.

Anthropometric measurements can be used to assess the body composition of adults, which can help to identify potential health risks such as sarcopenia (age-related loss of muscle mass) or obesity. In a clinical setting, anthropometric measurements are typically used in combination with other medical tests and evaluations to provide a more complete picture of a person's health. For example, a doctor may use anthropometric measurements in combination with blood tests and imaging studies to assess a person's nutrition status, or to identify potential health risks such as cardiovascular disease or diabetes. Additionally, these measurements may be used to help monitor the effectiveness of treatment interventions, such as weight loss programs, and to track changes in a person's health over time.

### Description  <!-- long description for the data browser -->

Anthropometrics is the study of the measurement of the human body in terms of the size, weight, and proportions of its various parts. Anthropometrics is an important tool in the field of medicine, as it allows for the assessment of a person's health and nutritional status, as well as the identification of potential health risks.

One of the primary uses of anthropometrics in medicine is in the assessment of growth and development in children. By measuring height, weight, and other body measurements, doctors can track a child's growth and development over time, and identify any potential issues such as stunted growth or obesity. Additionally, anthropometric measurements can be used to assess the body composition of adults, which can help to identify potential health risks such as sarcopenia (age-related loss of muscle mass) or obesity. In a clinical setting, anthropometric measurements are typically used in combination with other medical tests and evaluations to provide a more complete picture of a person's health. For example, a doctor may use anthropometric measurements in combination with blood tests and imaging studies to assess a person's nutrition status, or to identify potential health risks such as cardiovascular disease or diabetes. Additionally, these measurements may be used to help monitor the effectiveness of treatment interventions, such as weight loss programs, and to track changes in a person's health over time.

Our anthropometrics data is tabular and consists of a single record for each measurement taken per person at each visit. Data is stored as a pandas data frame, where records are indexed by the individual’s registration code and research stage. The data frame holds multiple columns related to measurements taken from the participant.

### Measurment procedure <!-- short and no images measurment for the example notebooks -->

Our anthropometric measurements include height, weight, waist circumference, hip circumference, and neck circumference. The equipment used in this protocol includes a measuring tape and a scale, specifically a Shekel stadiometer (Shekel Ultrasonic Physician BMI Scale h 120-4).

For measuring height, participants are asked to stand with their face against the scale, legs parallel to each other, toes pointing forward, and soles flat on the floor. Ensure participant's posture is unsupported, to stand as tall as possible, completely standing on the scale with legs straight. The height is recorded in centimeters.

For measuring weight, the participant is asked to remove their shoes and excess clothing, and stand on the stadiometer. The weight is recorded in kilograms. The measurement protocol for the waist, hip, and neck circumference include specific instructions for standing position, and the use of measuring tape. All circumference measurements are recorded in centimeters.

### Measurment protocol <!-- long measurment for the data browser -->

Our anthropometric measurements include height, weight, waist circumference, hip circumference, and neck circumference. The equipment used in this protocol includes a measuring tape and a scale, specifically a Shekel stadiometer (Shekel Ultrasonic Physician BMI Scale h 120-4). The stadiometer used is shown in the figure below. 

![image alt](anthro_intro.png)

For measuring height, participants are asked to stand with their face against the scale, legs parallel to each other, toes pointing forward, and soles flat on the floor. Ensure participant's posture is unsupported, to stand as tall as possible, completely standing on the scale with legs straight. The height is recorded in centimeters. 

For measuring weight, the participant is asked to remove their shoes and excess clothing, and stand on the stadiometer. The weight is recorded in kilograms. The measurement protocol for the waist, hip, and neck circumference include specific instructions for standing position, and the use of measuring tape. All circumference measurements are recorded in centimeters.

### Data availability <!-- for the example notebooks -->

The information is stored in 1 parquet file: `anthropometrics.parquet`

### Summary of available data <!-- for the data browser -->

A data frame of tabular data containing individual level body measurement records and derived measures.

### Relevent links

* Pheno Knowledgebase: https://knowledgebase.pheno.ai/datasets/002-anthropometrics.html