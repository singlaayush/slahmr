# [2, 3, 7, 11, 12, 13, 16, 17, 19, 20, 21, 22, 23, 24, 29, 30, 31, 33, 34, 35, 36, 41, 42, 43, 44, 45, 46, 48, 49, 51, 52, 54, 59, 66, 68, 70, 72] 
END=73
for ((i=29;i<=END;i++)); do
    FILENAME="c0$i"
    NAME=$FILENAME /snap/bin/yq -i '.seq = strenv(NAME)' confs/data/clinical1.yaml
    CUDA_VISIBLE_DEVICES='0' python run_opt.py data=clinical1 run_opt=True run_vis=True
done
