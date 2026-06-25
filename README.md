# Brain Activation During Social Cognition: A Replication Study
This is a replication study of the ToM (theory of mind) localizer using fMRI.

### Self-introduction
Hi, I’m Hisn-Chi, a first-year master’s student in psychology at NTU Taiwan.I’m a beginner at handling brain data, and my research interest is investigating socio–cognition in children with autism spectrum disorder, using fMRI.

### General objectives
My goal of this final project is to know how to make use of open source data to get the experience of doing fMRI data analysis. And at the same time, I want to understand the concept and purpose of each step.

### Specific objectives
To achieve these goals, my plan is to do a replication study, with a focus on brain activation. Taking my interest into consideration, I want to answer the research question, which region of the brain has significant activation during social-cognition tasks.

### Research question
Which region of the brain has significant activation during the ToM task?

### Dataset & Original paper
I will use this ds003814 dataset from OpenNeuro. The original paper's results showed that these brain regions have significant activation during the social-cognition task: MPC, MPFC, TPJ, STS, SFG, TP.

Although it's a multiband multiecho EPI fMRI data and may need a custom pipeline, I plan to do all the preprocessing and analysis in Matlab’s SPM.  Because I haven’t  learned how to use these softwares and packages yet. (FSL, Freesurfer, AFNI, Connectome Workbench, tedana, MSM)

### Data Analysis
All the fMRI data preprocessing and analysis are conducted in Matlab’s SPM with `.m` script provided.

### Expected outcomes
For the expected outcomes, I will output a Statistical Parametric Mapping figure to speculate what are the areas that have significant activation during the social-cognition task. And, are they the same as the authors?


### Get data
See: [get_data.txt](https://github.com/r14227123-cloud/Hsin-Chi_Project/blob/main/1.%20Command_Files/get_data.txt)

### Environment
* Windows11
* Matlab R2025b
* SPM25

### File tructure
See: [file_structure](https://github.com/r14227123-cloud/Hsin-Chi_Project/blob/main/2.%20Documents/file_structure.txt)


### Scripts
All the preprocessing and analysis are conducted using SPM's GUI with batch and scripts saved. 
See the scripts here: 
1. [Original_Data](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/3.%20Original_Data)
2. [Analysis_Data](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/4.%20Analysis_Data)

### Analysis pipleline
preprocessing → subject-level analysis → group-level analysis → ROI analysis

* Preprocessing

Step1. motion correction

Step2. slice timing correction

Step3. coregister T2 to EPI

Step4. coregister T1 to T2

Step5. segmentation

Step6. Dartel create SST

Step7. Dartel normalize MNI

* Subject-level analysis

Step8. first level specification

Step9. first level estimation

Step10. first level contrast

* Group-level analysis

Step11. second level specification

Step12. second level estimation

### Outcome figures

See: [results_figure](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/2.%20Documents/results%20figure)

The figure down below is a derivative of the whole-brain analysis with ten subjects, using a paired-sample t-test. The contrast was set as Belief > Photo. This means that the seven clusters showed greater activation during the Belief trials compared with the Photo trials.

<img width="587" height="844" alt="image" src="https://github.com/user-attachments/assets/17a6c3b7-d95b-483e-83c2-77563c37a11f" />



This figure down below shows the locations of the seven clusters. Four of these clusters overlap with the results reported in the original paper, while the remaining three appear to be more related to visual processing. So, what about TP and MPFC? Since the original paper’s example figure was based on one representative subject, I am still waiting for the author’s reply about which subject was used.

<img width="960" height="540" alt="{22488A9E-2FA0-48AB-9D99-574B4C26E6E5}" src="https://github.com/user-attachments/assets/d6dd6046-3c80-4ac9-8da6-7eb44b4a4a43" />

## Updates after the final presentation
This figure shows the results of the ROI analysis. I used AAL atlas to examine the ROIs reported in the original paper: MPC, SFG, STS, TPJ, MPFC and TP. The value of each bar represents the average contrast value across the voxels within that ROI, which can be interpreted as an index of task-related activation. 

The odd-numbered bars represent the activation levels during the Belief trials for subject 1~10, whereas the even-numbered bars represent the activation levels during the Photo trials for subject 1~10. 


<img width="752" height="452" alt="image" src="https://github.com/user-attachments/assets/91c17997-6045-4bbb-b5ac-4c42fefd1fa6" />

## Summary
This is a project aimed to gain the experience of hands-on fMRI data analysis using open source data. The details of the concept-learning and problem-solving process can be referred to the [slides](https://github.com/r14227123-cloud/Hsin-Chi_Project/blob/main/2.%20Documents/BH_Project_2026.public.pdf). 

My whole-brain analysis results from ten subjects show that supplementary motor area, postcentral gyrus, precuneus, superior frontal gyrus. middle occipital gyrus, superior temporal gyrus, inferior parietal lobe have greater activation during the ToM task. The ROI analysis shows the activation levels of six ROIs during the ToM task reported in the original paper. 

However, since the original paper’s example figure was based on one representative subject, I am still waiting for the author’s reply about which subject was used.


### The original paper: 

B. Deen, & W.A. Freiwald, Parallel systems for social and spatial cognition reaching the cortical apex, Proc. Natl. Acad. Sci. U.S.A. 122 (44) e2520067122, https://doi.org/10.1073/pnas.2520067122 (2025).

### The dataset:

Ben Deen and Winrich Freiwald (2022). Parallel systems for social and spatial reasoning. OpenNeuro. 

[Dataset](https://openneuro.org/datasets/ds003814/versions/1.0.0) doi: 

doi:10.18112/openneuro.ds003814.v1.0.0
