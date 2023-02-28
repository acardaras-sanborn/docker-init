# docker-init

## Create/Run Container
- run: pull docker image and run container
- --gpus: specify which gpus docker can see. ie '"device=0,3"' for gpus 0 and 3
- --cpus: specify max number of cpu cores to utilize. ie 2.5 will use 2.5 cpu cores.
- -p: forward port 6006 (default port for tensorboard). This will allow us to profile the gpu with tensoaboard on our local system.
- --rm: makes contaier temporary. upon closing the container, everything will be deleted.
- -v mount part of the disk. This allows docker to communicate with data outside of its closed environment.
- nvcr.io/nvidia/tensorrt:23.01-py3: specify which container version we want to pull/run. in this case, 23.01 with python3 
> sudo docker run --gpus '"device=N"' --cpus N -p 0.0.0.0:6006:6006 -it --rm -v /abs/path/to/project/code:project/code nvcr.io/nvidia/tensorrt:23.01-py3


## Set up container
Create symlinks in TensorRT container with:
> wget -q https://raw.githubusercontent.com/acardaras-sanborn/docker-init/main/setup-sym.sh && . setup-sym.sh


## Create and activate virtual environment (optional)
> python -m venv /workspace/my-venv --system-site-packages

> source /workspace/my-venv/bin/activate
