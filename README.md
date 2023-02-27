# docker-init

## Create/Run Container
Replace '"device=N"' with a specific GPU (device=0) or list of GPUs (device=2,3,4,5).
> sudo docker run --gpus '"device=N"' -p 0.0.0.0:6006:6006 -it --rm -v /abs/path/to/project/code:project/code nvcr.io/nvidia/tensorrt:23.01-py3


## Set up container
Create symlinks in TensorRT container with:
> wget -q https://raw.githubusercontent.com/acardaras-sanborn/docker-init/main/setup-sym.sh && . setup-sym.sh


## Create and activate virtual environment (optional)
> python -m venv /workspace/my-venv --system-site-packages

> source /workspace/my-venv/bin/activate
