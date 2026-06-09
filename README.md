# Brain Activation during ToM task
This is a replication study of the ToM (theory of mind) localizer using fMRI.

### Research question
Which region of the brain has significant activation during the ToM task?

### Data Analysis
All the fMRI data preprocessing and analysis are conducted in Matlab’s SPM with `.m` script provided.

### Scripts
All the preprocessing and analysis are conducted using SPM's GUI with batch and scripts saved. See the scripts here: [Documents](https://github.com/r14227123-cloud/Hsin-Chi_Project/tree/main/Documents/preprocessing)

### Analysis pipleline
See script: tom_preprocessing_10sub
1. motion correction
2. slice timing correction
3. coregister T2 to EPI
4. coregister T1 to T2
5. segmentation

See script: Dartel_normalize_MNI
6. Dartel normalize MNI

See script: windowspath_Dartel_create_Templat
7. Dartel create SST

See script: 
8. 1st level estimation

See script:
9. 1st level specification

See script:
10. 1st level contrast

See script:
11. 2nd level estimation

See script:
12. 2nd level specification

### Outputs
The output will be a statistical parametric mapping figure, see: 

The original paper: 
B. Deen, & W.A. Freiwald, Parallel systems for social and spatial cognition reaching the cortical apex, Proc. Natl. Acad. Sci. U.S.A. 122 (44) e2520067122, https://doi.org/10.1073/pnas.2520067122 (2025).

The dataset:
Ben Deen and Winrich Freiwald (2022). Parallel systems for social and spatial reasoning. OpenNeuro. [Dataset] doi: doi:10.18112/openneuro.ds003814.v1.0.0




the README should clearly document your project: the research question, what scripts/notebooks you wrote, how to run the analysis, what outputs are produced, and what dataset was used.
