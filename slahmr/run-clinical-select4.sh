# [136, 139, 141, 142, 144, 145, 146, 147, 148, 149, 151, 153, 157, 162, 163, 164, 165, 167]
END=167
for ((i=162;i<=END;i++)); do
    FILENAME="c$i"
    NAME=$FILENAME /snap/bin/yq -i '.seq = strenv(NAME)' confs/data/clinical4.yaml
    CUDA_VISIBLE_DEVICES='0' python run_opt.py data=clinical4 run_opt=True run_vis=True
done
# CUDA_VISIBLE_DEVICES='3' python run_vis.py --log_root "/home/ayushsingla/humor_dev/slahmr/outputs/logs/video-val/2023-04-27/special-all-shot-0-0-180"