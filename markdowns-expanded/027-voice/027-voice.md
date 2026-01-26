# Voice dataset  

### Description

This dataset consists of high-quality voice recordings collected from participants in a controlled clinical research setting. Each participant provided a ~30-second sustained counting sample (in Hebrew, with a subset in Japanese), recorded using a cardioid dynamic USB/XLR microphone and Audacity software. Recordings are stored in lossless `.flac` format to preserve full audio fidelity, accompanied by participant metadata (Participant ID, sex, date of birth) in a structured `.csv` file.

### Introduction

Voice data is increasingly being used in clinical research and personalized medicine. Key trends include using vocal biomarkers for disease diagnosis (e.g., Parkinson's, Alzheimer's), mental health assessment, and monitoring respiratory conditions. Additionally, voice-based technologies are being developed for treatment adherence, remote monitoring, and personalized voice assistants in healthcare. Voice data is also explored for emotion recognition and speech therapy applications. Overall, voice data has the potential to transform healthcare by providing non-invasive, cost-effective, and convenient diagnostic and treatment methods.

In the context of voice, a **vocal biomarker** is a signature, a feature, or a combination of features from the audio signal of the voice that is associated with a clinical outcome and can be used to monitor patients, diagnose a condition, or grade the severity or the stages of a disease or for drug development.

Work on vocal biomarkers has mainly been performed in the field of neurodegenerative disorders, particularly Parkinson's disease, where voice disorders are very frequent (as high as 70-80%) and where voice changes are expected to be utilized as an early diagnostic biomarker. Other areas of research include mental health and monitoring emotions, multiple sclerosis and rheumatoid arthritis, Alzheimer's disease and mild cognitive impairment, cardiometabolic and cardiovascular diseases, and COVID-19 and other conditions with lung and respiratory symptoms.

### Measurement protocol 
<!-- long measurment protocol for the data browser -->

The participant's voice is audio-recorded for around thirty (30) seconds by counting to thirty (30) in their native language (primarily Hebrew, with a subset in Japanese).

#### Device and Software

**Device type:** Cardioid dynamic USB/XLR microphone  
**Software:** Audacity (open-source audio recording/editing software)  
**Recording format:** Lossless `.flac` (primary), `.wav` supported  
**Recording duration:** ~30 seconds (counting 1–30)  
**Recording environment:** Quiet, controlled clinical setting

#### Device Specifications

| Parameter | Specification |
|-----------|---------------|
| Device type | Cardioid dynamic USB/XLR microphone |
| Polar pattern | Cardioid (unidirectional) |
| Connection type | USB-C / XLR |
| Sampling rate | 44.1 kHz (default), supports up to 48 kHz |
| Bit depth | 16-bit / 24-bit |
| Frequency response | 50 Hz – 15 kHz |
| Microphone sensitivity | -55 dBV/Pa (at 1 kHz) |
| Recording environment | Quiet, controlled clinical setting |
| Contraindications / limitations | Avoid high background noise; maintain fixed mic distance (15–30 cm) from mouth |
| Accessories used | Desktop mic stand, pop filter |

### Data availability 
<!-- for the example notebooks -->

The information is stored as individual audio files in `.flac` format (lossless compression), with associated metadata in `.csv` files. Each recording is approximately 30 seconds in duration.

### Summary of available data 
<!-- for the data browser -->

**Voice recordings:** High-dimensional time-series data captured as audio recordings (`.flac` format), obtained by participants counting to thirty (30) in Hebrew (with a subset in Japanese). The `.flac` format retains full audio quality (lossless) and is preferred for clinical signal fidelity.

The dataset includes:
- Audio recordings in lossless `.flac` format
- Participant metadata (ID, sex, date of birth)
- Recording metadata (date, duration, language)

As of the current release, the dataset contains 9,246 Hebrew-speaking participants with an ongoing subset of Japanese-language recordings.
