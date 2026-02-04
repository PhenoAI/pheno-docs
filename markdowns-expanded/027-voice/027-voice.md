
### Description

Voice recordings of participants counting to thirty, captured in lossless audio format to enable vocal biomarker analysis.

### Introduction 
<!-- shortened introduction with clinical context -->

Voice data is increasingly being used in clinical research and personalized medicine. Vocal biomarkers can be used for disease diagnosis (e.g., Parkinson's, Alzheimer's), mental health assessment, and monitoring respiratory conditions. Voice features such as pitch, tone, and speech patterns can provide non-invasive, cost-effective insights into a person's health status and disease progression.

A **vocal biomarker** is a signature or feature from the audio signal of the voice that is associated with a clinical outcome and can be used to monitor patients, diagnose conditions, or assess disease severity. Work on vocal biomarkers has mainly been performed in neurodegenerative disorders (particularly Parkinson's disease, where voice disorders occur in 70-80% of cases), mental health conditions, multiple sclerosis, Alzheimer's disease and mild cognitive impairment, cardiometabolic diseases, and respiratory conditions including COVID-19.

Voice features extracted from audio recordings include:
- **Fundamental frequency (F0)**: Captures pitch and vocal fold vibration patterns
- **Formants (F1-F3)**: Reflects vocal tract configuration and articulation precision
- **Harmonics-to-Noise Ratio (HNR)**: Quantifies voice quality, breathiness, and roughness
- **Jitter and Shimmer**: Measures cycle-to-cycle variation in pitch and amplitude
- **MFCCs**: Compact spectral descriptors aligned with human auditory perception
- **Prosody features**: Speech rate, intensity, and intonation patterns

### Measurement protocol 
<!-- long measurment protocol for the data browser -->

Participants provide a 30-second voice recording by counting to thirty in their native language (primarily Hebrew, with a subset in Japanese). Recordings are captured in a quiet, controlled clinical setting.

**Recording setup:**
- **Device**: Cardioid dynamic USB/XLR microphone
- **Software**: Audacity (open-source audio recording/editing software)
- **Format**: Lossless `.flac` format (preserves full audio fidelity)
- **Duration**: ~30 seconds (counting 1-30)
- **Environment**: Quiet, controlled clinical setting
- **Distance**: Microphone positioned 15-30 cm from participant's mouth
- **Accessories**: Desktop mic stand, pop filter

**Technical specifications:**
- Sampling rate: 44.1 kHz (default), supports up to 48 kHz
- Bit depth: 16-bit / 24-bit
- Frequency response: 50 Hz – 15 kHz
- Polar pattern: Cardioid (unidirectional)

### Data availability 
<!-- for the example notebooks -->

The information is stored as individual audio files in `.flac` format (lossless compression), with associated participant metadata in `.csv` files. Each recording is approximately 30 seconds in duration.

### Summary of available data 
<!-- for the data browser -->

The data comprises of multiple levels:

1. **Raw audio files**: Lossless `.flac` audio recordings of participants counting to thirty in their native language

2. **Extracted features**: Traditional signal processing features (F0, formants, jitter, shimmer, MFCCs) and deep learning-based embeddings for vocal biomarker research
