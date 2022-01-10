${CONDA_PATH}/conda create -q -n py37env python=3.7.6

${CONDA_PATH}/conda init bash

${CONDA_PATH}/conda activate py37env
${CONDA_PATH}/conda info -a
${CONDA_PATH}/conda list

echo "Conda Python version: $(python --version)"
