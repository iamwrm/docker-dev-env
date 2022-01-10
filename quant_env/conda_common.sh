${CONDA_PATH}/conda create -q -n py37env python=3.7.6

source activate py37env
${CONDA_PATH}/conda info -a
${CONDA_PATH}/conda list

echo "Conda Python version: $(python --version)"
