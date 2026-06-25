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

The output will be a statistical parametric mapping figure, see: [results_figure](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/2.%20Documents/results%20figure)

<img width="752" height="452" alt="image" src="https://github.com/user-attachments/assets/91c17997-6045-4bbb-b5ac-4c42fefd1fa6" />

### The original paper: 

B. Deen, & W.A. Freiwald, Parallel systems for social and spatial cognition reaching the cortical apex, Proc. Natl. Acad. Sci. U.S.A. 122 (44) e2520067122, https://doi.org/10.1073/pnas.2520067122 (2025).

### The dataset:

Ben Deen and Winrich Freiwald (2022). Parallel systems for social and spatial reasoning. OpenNeuro. 

[Dataset](https://openneuro.org/datasets/ds003814/versions/1.0.0) doi: 

doi:10.18112/openneuro.ds003814.v1.0.0
