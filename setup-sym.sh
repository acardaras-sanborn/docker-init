# create symlinks (tensorboard expects older versions of the following libraries, we will just add a symlink from older to newer versions)
ln -s /usr/lib/x86_64-linux-gnu/libnvinfer.so.8 /usr/lib/x86_64-linux-gnu/libnvinfer.so.7
ln -s /usr/lib/x86_64-linux-gnu/libnvinfer_plugin.so.8 /usr/lib/x86_64-linux-gnu/libnvinfer_plugin.so.7
ln -s /usr/local/cuda-12.0/targets/x86_64-linux/lib/libcufft.so.11 /usr/local/cuda-12.0/targets/x86_64-linux/lib/libcufft.so.10
ln -s /usr/local/cuda-12.0/targets/x86_64-linux/lib/libcusparse.so.12 /usr/local/cuda-12.0/targets/x86_64-linux/lib/libcusparse.so.11

# create/activate venv
apt update
apt install python3.8-venv

# update path
export LD_LIBRARY_PATH="/usr/local/cuda/NsightSystems-cli-2022.5.1/target-linux-x64:/usr/local/cuda/targets/x86_64-linux/lib:/usr/local/cuda/compat/lib.real:/usr/local/cuda/compat/lib:/usr/local/nvidia/lib:/usr/local/nvidia/lib64"
