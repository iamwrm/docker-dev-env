set -xe

echo "System Python version: $(python --version)"

cd /root

wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh 
bash Anaconda3-2021.11-Linux-x86_64.sh -b -p "/root/anaconda3"

CONDA_PATH="/root/anaconda3/bin"
