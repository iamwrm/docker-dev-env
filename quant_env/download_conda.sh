set -xe

echo "System Python version: $(python --version)"

cd /root

wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.10.3-Linux-x86_64.sh
bash Miniconda3-py37_4.10.3-Linux-x86_64.sh -b -p "/root/miniconda"

CONDA_PATH="/root/miniconda"
