CONDA_PATH=$(cat /tmp/dockerbuild/conda_path.txt)
CONDA=${CONDA_PATH}/bin/conda

${CONDA} create -q -n py37env python=3.7.6
${CONDA} init bash

bash ${CONDA_PATH}/etc/profile.d/conda.sh 

