# [100, 102, 105, 106, 107, 108, 109, 110, 111, 113, 115, 117, 119, 120, 122, 123, 125, 127, 129, 130, 131, 134, 135]
END=135
for ((i=115;i<=END;i++)); do
    FILENAME="c$i"
    NAME=$FILENAME /snap/bin/yq -i '.seq = strenv(NAME)' confs/data/clinical3.yaml
    CUDA_VISIBLE_DEVICES='2' python run_opt.py data=clinical3 run_opt=True run_vis=True
done
