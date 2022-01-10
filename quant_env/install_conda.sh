set -xe

echo "System Python version: $(python --version)"

cd /root

wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh
bash Miniconda3-py37_4.10.3-Linux-x86_64.sh -b -p "/root/miniconda"

conda create -q -n py37env python=3.7.6

source activate testenv
conda info -a
conda list

echo "Conda Python version: $(python --version)"

