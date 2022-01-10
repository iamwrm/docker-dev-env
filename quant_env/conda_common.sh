conda create -q -n py37env python=3.7.6

source activate py37env
conda info -a
conda list

echo "Conda Python version: $(python --version)"
