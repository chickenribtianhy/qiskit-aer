rm -rf /dist
# python ./setup.py bdist_wheel -- -DAER_THRUST_BACKEND=CUDA -DCMAKE_VERBOSE_MAKEFILE=true  -DAER_DEBUG=false -DAER_MPI=false -DCMAKE_CUDA_FLAGS=-std=c++14 -DAER_PYTHON_CUDA_ROOT=$CONDA_PREFIX  --
python ./setup.py bdist_wheel -- -DAER_THRUST_BACKEND=CUDA
pip uninstall qiskit-aer -y
# pip install -U dist/*
pip install .