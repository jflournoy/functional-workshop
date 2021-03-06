#!/bin/bash
. ~/.bashrc

# This script runs 3dClustSim for each model using acf parameters generated by calculateACF.sh

# Specify variables
# ------------------------------------------------------------------------------------------
# thresholding code directory
outputDir=/Volumes/psych-cog/dsnlab/MDC/functional-workshop/code/thresholding/output

# RX directories (where model masks can be found)
spmDir=/Volumes/psych-cog/dsnlab/MDC/functional-workshop/results/SPM
afniDir=/Volumes/psych-cog/dsnlab/MDC/functional-workshop/results/AFNI

# Run 3dClustSim
# ------------------------------------------------------------------------------------------
3dClustSim -mask "${afniDir}"/3Ts+tlrc[0] -acf 0.544571 4.4691 12.7136 > "${outputDir}"/3dClustStim_results_AFNI_3Ts.txt

3dClustSim -mask "${afniDir}"/all+tlrc[0] -acf 0.552817 4.47274 12.9568 > "${outputDir}"/3dClustStim_results_AFNI_all.txt

3dClustSim -mask "${spmDir}"/mask.nii -acf 0.549494 4.823864 13.24039 > "${outputDir}"/3dClustStim_results_SPM.txt