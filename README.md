# Brain Activation during ToM task
This is a replication study of the ToM (theory of mind) localizer using fMRI.

### Research question
Which region of the brain has significant activation during the ToM task?

### Data Analysis
All the fMRI data preprocessing and analysis are conducted in Matlab’s SPM with `.m` script provided.

### Get data
See: [get_data.txt](https://github.com/r14227123-cloud/Hsin-Chi_Project/blob/main/Command_Files/get_data.txt)

### Environment
* Windows11
* Matlab R2025b
* SPM25

### Scripts
All the preprocessing and analysis are conducted using SPM's GUI with batch and scripts saved. 
See the scripts here: 
1. [Original_Data](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/Original_Data)
2. [Analysis_Data](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/Analysis_Data)

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

### Outputs

The output will be a statistical parametric mapping figure, see: [results_figure](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/Documents/results%20figure)

### The original paper: 

B. Deen, & W.A. Freiwald, Parallel systems for social and spatial cognition reaching the cortical apex, Proc. Natl. Acad. Sci. U.S.A. 122 (44) e2520067122, https://doi.org/10.1073/pnas.2520067122 (2025).

### The dataset:

Ben Deen and Winrich Freiwald (2022). Parallel systems for social and spatial reasoning. OpenNeuro. 

[Dataset](https://openneuro.org/datasets/ds003814/versions/1.0.0) doi: 

doi:10.18112/openneuro.ds003814.v1.0.0
