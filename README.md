# Brain Activation During Social Cognition: A Replication Study
This is a replication study of the ToM (theory of mind) localizer using fMRI.

### Self-introduction
Hi, I’m Hisn-Chi, a first-year master’s student in psychology at NTU Taiwan.I’m a *beginner* at handling brain data, and my research interest is investigating socio–cognition in children with autism spectrum disorder, using fMRI.

### General objectives
My goal of this final project is to know how to make use of open source data to *get the experience* of doing fMRI data analysis. And at the same time, I want to understand the *concept and purpose* of each step.

### Specific objectives
To achieve these goals, my plan is to do a replication study, with a focus on brain activation. Taking my interest into consideration, I want to answer the research question, which region of the brain has significant activation during social-cognition tasks.

### Research question
*Which region of the brain has significant activation during the ToM task?*

### Dataset & Original paper
I will use this *ds003814* dataset from OpenNeuro. 

<img width="1566" height="893" alt="image" src="https://github.com/user-attachments/assets/c60a1b83-ec7f-4f87-af37-15bf629c704e" />

The original paper's result from one representative subject showed that these brain regions have significant activation during the social-cognition task: MPC, MPFC, TPJ, STS, SFG, TP.

### Expected outcomes
For the expected outcomes, I will output a figure to visualize the areas that have significant activation during the social-cognition task. And, are they the same as the authors?

---
### Workflow
 *download the data → preprocessing → subject-level analysis → group-level analysis → ROI analysis*

### File tructure
This [repo_structure](https://github.com/r14227123-cloud/Hsin-Chi_Project/blob/main/4.%20Documents/repo_structure.txt) file shows the file structure of this repository. 

### User guide
To replicate the results of my analysis, you can just follow the *sequence* of the folder.

---

### Get data
* Understand the structure of the original data: [data_structure](https://github.com/r14227123-cloud/Hsin-Chi_Project/blob/main/1.%20Data_Acquisition/1.%20data_structure.txt)

* This [get_data](https://github.com/r14227123-cloud/Hsin-Chi_Project/blob/main/1.%20Data_Acquisition/2.%20get_data.txt) file shows the bash command of how I get the data. The original data is very large, so I used the regex (regular expressions) to extract the specific target and filter out the rest. 

### Environment
* Windows11
* Matlab R2025b
* SPM25
* ROI analysis Toolbox: MarsBaR

*All the fMRI data preprocessing and analysis are conducted in Matlab’s SPM with `.m` script provided.*

### Analysis pipleline

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

See: [results_figure](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/4.%20Documents/results%20figure)

The figure down below is a derivative of the *whole-brain analysis* with ten subjects, using a paired-sample t-test. The contrast was set as Belief > Photo. This means that the *seven clusters* showed greater activation during the Belief trials compared with the Photo trials.

<img width="587" height="844" alt="image" src="https://github.com/user-attachments/assets/17a6c3b7-d95b-483e-83c2-77563c37a11f" />



This figure down below shows *the regions* of the seven clusters. Four of these clusters overlap with the results reported in the original paper, while the remaining three appear to be more related to visual processing. So, what about TP and MPFC? Since the original paper’s example figure was based on one representative subject, I am still waiting for the author’s reply about which subject was used.

<img width="960" height="540" alt="{22488A9E-2FA0-48AB-9D99-574B4C26E6E5}" src="https://github.com/user-attachments/assets/d6dd6046-3c80-4ac9-8da6-7eb44b4a4a43" />

## Updates after the final presentation
This figure shows the results of the *ROI analysis*. I used AAL atlas to examine the ROIs reported in the original paper: MPC, SFG, STS, TPJ, MPFC and TP. The value of each bar represents the average contrast value across the voxels within that ROI, which can be interpreted as an index of task-related activation. 

The odd-numbered bars represent the activation levels during the Belief trials for subject 1-10, whereas the even-numbered bars represent the activation levels during the Photo trials for subject 1-10. 


<img width="752" height="452" alt="image" src="https://github.com/user-attachments/assets/91c17997-6045-4bbb-b5ac-4c42fefd1fa6" />

## Summary
This project aims to gain hands-on experience with fMRI data analysis using open-source data. The details of the *concept-learning and problem-solving* process are provided in the [slides](https://github.com/r14227123-cloud/Hsin-Chi_Project/blob/main/4.%20Documents/BH_Project_2026.public.pdf). 

*The whole-brain analysis* results from ten subjects showed greater activation during the ToM task in several regions, including the supplementary motor area, postcentral gyrus, precuneus, superior frontal gyrus, middle occipital gyrus, superior temporal gyrus, and inferior parietal lobule.

*The ROI analysis* further examined the activation levels of six ROIs reported in the original paper during the ToM task. However, since the example figure in the original paper was based on one representative subject, I am still waiting for the author’s reply to confirm which subject was used.

### The original paper: 

B. Deen, & W.A. Freiwald, Parallel systems for social and spatial cognition reaching the cortical apex, Proc. Natl. Acad. Sci. U.S.A. 122 (44) e2520067122, https://doi.org/10.1073/pnas.2520067122 (2025).

### The dataset:

Ben Deen and Winrich Freiwald (2022). Parallel systems for social and spatial reasoning. OpenNeuro. 

[Dataset](https://openneuro.org/datasets/ds003814/versions/1.0.0) doi: 

doi:10.18112/openneuro.ds003814.v1.0.0
