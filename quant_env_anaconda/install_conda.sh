set -xe

echo "System Python version: $(python --version)"

cd /root

wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh 
bash Anaconda3-2021.11-Linux-x86_64.sh -b -p "/root/anaconda3"

conda create -q -n py37env python=3.7.6

source activate py37env
conda info -a
conda list

echo "Conda Python version: $(python --version)"

