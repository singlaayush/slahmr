#!/bin/bash
# > /home/ayushsingla/humor_dev/slahmr/outputs/logs/bash-scripts/run-slahmr-clinical-all.log
for curr_folder in /home/ayushsingla/humor_dev/slahmr/videos/clinical/*; do
    FILENAME="$(basename --suffix=.MOV $curr_folder)"
    echo -e "Running SLAHMR fitting on Video $FILENAME:"
    NAME=$FILENAME /snap/bin/yq -i '.seq = strenv(NAME)' confs/data/clinical.yaml
    python run_opt.py data=clinical run_opt=True run_vis=True
done
