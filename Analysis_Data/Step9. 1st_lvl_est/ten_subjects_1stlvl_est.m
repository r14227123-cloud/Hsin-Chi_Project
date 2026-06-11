% List of open inputs
nrun = X; % enter the number of runs here
jobfile = {'C:\Users\cindy\Desktop\BH\final\1st lvl\Step9. 1st_lvl_est\ten_subjects_1stlvl_est_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
