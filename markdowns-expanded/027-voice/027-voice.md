# Voice dataset  

### Description 

The Voice Dataset is a collection of direct voice recordings gathered for clinical research purposes. High-quality digital recorders or mobile devices with superior microphones are used to ensure optimal audio capture, with recordings saved in lossless formats to maintain data integrity. The dataset is compiled under consistent recording conditions, with clear instructions provided to participants. Ethical guidelines are strictly followed to secure informed consent and protect data privacy. This dataset serves as a valuable resource for researchers aiming to analyze vocal biomarkers and develop voice-based applications in healthcare.

### Introduction

Voice data is increasingly being used in clinical research and personalized medicine. Key trends include utilizing vocal biomarkers for disease diagnosis (e.g., Parkinson's disease, Alzheimer's disease), mental health assessment, and monitoring respiratory conditions. Voice-based technologies are also being developed for treatment adherence, remote patient monitoring, and personalized voice assistants in healthcare settings. Additionally, voice data is explored for emotion recognition and speech therapy applications. Overall, voice data has the potential to transform healthcare by providing non-invasive, cost-effective, and convenient diagnostic and treatment methods.

### Measurement protocol 
<!-- long measurment protocol for the data browser -->
The participant's voice is audio-recorded for thirty (30) seconds by counting to thirty (30).

### Data availability 
<!-- for the example notebooks -->
Coming soon

### Summary of available data
<!-- for the data browser -->
Raw data: flac files of recordings

#### Info on our raw data
flac file stores audio data using lossless compression, retaining all original information. When you load a .flac file using Librosa and set the sr parameter to None, it decompresses the audio data and converts it into a NumPy array without resampling. This array represents the waveform, where each element is the amplitude of the audio signal at a specific point in time. By not resampling, the original sample rate of the audio file is preserved.

The amplitude of an audio signal represents the instantaneous voltage (or pressure) at a specific point in time. In digital audio, the analog signal is sampled at discrete intervals, creating a time-series of amplitude values. Digital audio data is processed using specialized libraries like Librosa for feature extraction, signal processing, and visualization, enabling data scientists to analyze and apply machine learning techniques to understand and utilize the information within audio signals.


### Relevant links

Coming soon
