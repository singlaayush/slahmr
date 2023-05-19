# [76, 78, 79, 83, 84, 86, 87, 88, 89, 90, 91, 92, 94, 97, 98, 99]
END=99
for ((i=86;i<=END;i++)); do
    FILENAME="c0$i"
    NAME=$FILENAME /snap/bin/yq -i '.seq = strenv(NAME)' confs/data/clinical2.yaml
    CUDA_VISIBLE_DEVICES='1' python run_opt.py data=clinical2 run_opt=True run_vis=True
done
