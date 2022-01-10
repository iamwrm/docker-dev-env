CONDA=${CONDA_PATH}/bin/conda

${CONDA} create -q -n py37env python=3.7.6
${CONDA} init bash

bash ${CONDA_PATH}/etc/profile.d/conda.sh 

${CONDA} activate py37env
${CONDA} info -a
${CONDA} list

echo "Conda Python version: $(python --version)"
echo "Which python version is running: $(which python)"
