#!/usr/bin/env bash
set -e

# export CONDA_ENV_NAME=slahmr
# 
# conda create -n $CONDA_ENV_NAME python=3.9 -y
# 
# conda activate $CONDA_ENV_NAME

# install pytorch using pip, update with appropriate cuda drivers if necessary
pip install torch==1.13.0 torchvision==0.14.0 --index-url https://download.pytorch.org/whl/cu117
# uncomment if pip installation isn't working
# conda install pytorch=1.13.0 torchvision=0.14.0 pytorch-cuda=11.7 -c pytorch -c nvidia -y

# install pytorch scatter using pip, update with appropriate cuda drivers if necessary
pip install torch-scatter -f https://data.pyg.org/whl/torch-1.13.0+cu117.html
# uncomment if pip installation isn't working
# conda install pytorch-scatter -c pyg -y

# install remaining requirements
pip install -r requirements.txt

# install source
pip install -e .
# pip install torch==1.8.1 torchvision==0.9.2 --index-url https://download.pytorch.org/whl/cu111
# install ViTPose
pip install -v -e third-party/PHALP_plus/ViTPose

# install DROID-SLAM
cd third-party/DROID-SLAM
python setup.py install
cd ../..
