% List of open inputs
nrun = X; % enter the number of runs here
jobfile = {'C:\Users\cindy\Desktop\BH\final\1st lvl\Step8. 1st_lvl_spec\ten_subjects_1stlvl_spec_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
