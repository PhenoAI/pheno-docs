# Wearables

### Description

Smartphone apps and wearable devices for monitoring physical activity and other health behaviors have gained popularity in recent years, offering a largely untapped source of data on health behaviors in real-world settings. This data is vast, collected at a low cost in natural environments, and often recorded automatically, making it a powerful supplement to traditional surveillance studies and controlled trials.

This dataset includes anonymized health and fitness data gathered from users of Google Fit and Apple HealthKit. It encompasses various categories such as body measurements (weight, height), physical activity (steps, exercise duration), nutrition, sleep patterns, heart rate, and cardiovascular health metrics. Apple HealthKit extends data collection to include more extensive medical and health-related information. Both platforms collect data through wearable devices and self-reported inputs, providing a comprehensive view of users' health and lifestyles.

### Introduction

**Google Fit** is a fitness tracking platform that was released in October 2014. It is an open ecosystem that currently supports Android 4.1 and higher. It reads, gathers, and stores users' data obtained via wearable gadgets and self-reporting.

**HealthKit** (Apple Health) is Apple's health data collection and visualization platform that was released in 2014 for iPhone with iOS 8+. The Health app collects and visualizes user data received from Apple Watch, smartphones, and self-reported inputs. HealthKit is a framework with an API that allows displaying the health data collected by apps and wearables that are connected to the Health app.

#### Key Differences

- **Platform compatibility:** Google Fit works with any platform, whereas Health is an iOS-only app (therefore, data from Health, specifically, is for iOS devices only).

- **Clinical use:** Google Fit APIs are meant for creating fitness apps and should not be used for creating clinical solutions. Google Fit cannot be used with medical devices or as a digital therapeutic. HealthKit is built to help develop digital therapeutics — apps that can be used for patients' treatment.

- **Data storage:** Google Fit stores data in the cloud, whereas Health and HealthKit save it on the user's device.

### Measurement protocol
<!-- long measurment protocol for the data browser -->

When users download the HPP app under instruction during their visit to the clinical testing center (CTC), they are asked to give permission to share the wearable data from either Google Fit or Apple Health. The current Standard Operating Procedure (SOP) for mobile app use instructions during the visit to the CTC is available through the internal documentation system.

#### Data Collection Methods

- **Google Fit:** Gathers data through wearable devices and self-reporting, supporting a variety of devices and platforms, and stores user data in the cloud for synchronization across devices.

- **Apple HealthKit:** Collects data from Apple Watch sensors and self-reported inputs, exclusive to iOS devices, and saves data locally on the user's device to enhance privacy and security.

Ethical considerations such as user consent and data anonymization are maintained to protect privacy and comply with data protection regulations, ensuring the dataset is suitable for research while respecting user rights.

### Data availability
<!-- for the example notebooks -->

The data comprises three levels of processing:

1. **Raw data:** Many data frames of temporal data and tabular data from various sensors and self-reported inputs

2. **Daily summary statistics:** Data frames of computed summary features from the raw data which summarize the data at a daily level

3. **Summary statistics:** Data frames which show high-level summary features computed at the participant research stage level

Data is available from 2 sources: Apple Health and Google Fit. Each of these sources has multiple versions and features stored in separate parquet files.

### Summary of available data
<!-- for the data browser -->

The data is organized into the following categories:

- **Cardiovascular health:** Heart rate, heart rate variability, blood pressure, VO2 max
- **Vital signs:** Body temperature, oxygen saturation, respiratory rate
- **Physical activity:** Steps, distance, active energy burned, exercise duration, workouts
- **Body metabolism:** Basal metabolic rate, energy expenditure
- **Sleep & Mindfulness:** Sleep duration, sleep stages, mindful minutes
- **Nutrition:** Dietary intake, water consumption, macronutrients
- **Anthropometrics:** Weight, height, body mass index (BMI), body fat percentage

#### Data Processing Levels

**Google Fit:**
The data flow from Google Fit involves synchronization of wearable device data through the Google Fit platform, which stores the information in the cloud. Users grant permission for the HPP app to access this data, which is then processed and stored in the research database.

**Apple Health:**
The data flow from Apple Health involves local storage on the user's iOS device. The Health app aggregates data from Apple Watch and other connected devices. Users grant permission for the HPP app to access this data, which is then transmitted and stored in the research database.

The complete list of features and categories can be found in the `033_health_apps_dictionary` data dictionary.
