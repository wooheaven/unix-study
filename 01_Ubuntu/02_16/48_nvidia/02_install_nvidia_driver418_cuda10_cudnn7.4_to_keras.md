# Bios
```
Secure Boot -> Disabled
```

# find Nvidia GPU's name and Compute Capability
```
https://developer.nvidia.com/cuda-gpus
# GTX 950M = Compute Capability 5.0 (Maxwell)
```

# find Compute Capability and CUDA SDK
```
https://en.wikipedia.org/wiki/CUDA
-> GPUs supported
# CUDA SDK 10.0 - 10.1 support for compute capability 3.0 - 7.5 (Kepler, Maxwell, Pascal, Volta, Turing)
```

# Nvidia CUDA and Ubuntu version
```{text}
https://developer.nvidia.com/cuda-80-ga2-download-archive
https://developer.nvidia.com/cuda-90-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu
# Nvidia CUDA = Ubuntu
# 10.0    = 18.04, 16.04
# 9.0     = 16.04
```

# find CUDA SDK and cuDNN and Tensorflow
```
https://www.tensorflow.org/install/source#tested_source_configurations
# CUDA SDK  9 = cuDNN 7   = tensorflow_gpu-1.11.0
# CUDA SDK 10 = cuDNN 7.4 = tensorflow_gpu-1.13.1
```

# find Tensorflow and Keras and Python
```{text}
https://www.tensorflow.org/install/gpu  
https://docs.floydhub.com/guides/environments/  
# tensorflow_gpu-1.11.0 = Keras 2.2.0 = Python 3.3~3.6
# tensorflow_gpu-1.13.1 = Keras 2.2.4 = Python 3.3~3.6
```

# overview
```
NVidia Driver  418.67
CUDA           10.0.130
cuDNN          7.4.1
Tensorflow-GPU 1.13.1
Keras          2.2.4
Python         3.6.7
```

# NVidia Driver 
```{bash}
# Ctrl + Alt + F1
$ sudo service lightdm stop
$ sudo apt-get remove --purge nvidia*
$ sudo apt-get autoremove

# Add NVIDIA package repositories
# Add HTTPS support for apt-key
$ sudo apt-get install gnupg-curl
$ wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
$ sudo dpkg -i cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
$ sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
$ sudo apt-get update
$ wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
$ sudo apt install ./nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb
$ sudo apt-get update
$ apt-cache search nvidia

# remove nouveau
$ sudo apt-get remove nvidia* && sudo apt autoremove 
$ sudo apt-get install dkms build-essential linux-headers-generic 
$ sudo cp /etc/modprobe.d/blacklist.conf /etc/modprobe.d/blacklist.conf.bak
$ sudo vi /etc/modprobe.d/blacklist.conf
...
blacklist nouveau 
blacklist lbm-nouveau 
options nouveau modeset=0 
alias nouveau off 
alias lbm-nouveau off 
$ echo options nouveau modeset=0 | sudo tee -a /etc/modprobe.d/nouveau-kms.conf 

# save kernel image
$ ll /var/lib/initramfs-tools
$ sudo update-initramfs -u 
$ sudo reboot

# Ctrl + Alt + F1
$ sudo service lightdm stop

# Install Nvidia Driver
$ sudo mkdir /usr/lib/nvidia
$ sudo apt-get install nvidia-418
$ lspci -k
...
00:02.0 VGA compatible controller: Intel Corporation HD Graphics 530 (rev 06)
	Subsystem: Lenovo Skylake Integrated Graphics
	Kernel driver in use: i915
	Kernel modules: i915
...
01:00.0 3D controller: NVIDIA Corporation GM107M [GeForce GTX 950M] (rev a2)
	Subsystem: Lenovo GM107M [GeForce GTX 950M]
	Kernel modules: nvidiafb, nouveau, nvidia_418_drm, nvidia_418
...

$ sudo reboot
$ Ctrl + Alt + F1
$ sudo service lightdm stop
$ nvidia-smi
Mon Nov 12 18:38:29 2018
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 418.67       Driver Version: 418.67       CUDA Version: 10.0     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  GeForce GTX 950M    Off  | 00000000:01:00.0 Off |                  N/A |
| N/A   38C    P8    N/A /  N/A |    310MiB /  2004MiB |      0%      Default |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                       GPU Memory |
|  GPU       PID   Type   Process name                             Usage      |
|=============================================================================|
|    0      1651      G   /usr/lib/xorg/Xorg                           245MiB |
|    0      3706      G   compiz                                        62MiB |
+-----------------------------------------------------------------------------+

$ cat /proc/driver/nvidia/version 
NVRM version: NVIDIA UNIX x86_64 Kernel Module  418.67  Tue Feb  5 22:58:30 CST 2019
GCC version:  gcc version 5.4.0 20160609 (Ubuntu 5.4.0-6ubuntu1~16.04.11)

$ sudo reboot
```

# CUDA, cudnn, libs 
```{bash}
$ sudo apt-get install --no-install-recommends cuda-10-0 libcudnn7=7.4.1.5-1+cuda10.0 libcudnn7-dev=7.4.1.5-1+cuda10.0
$ vi ~/.bashrc
...
# CUDA
export PATH=$PATH:/usr/local/cuda/bin

$ sudo vi /etc/ld.so.conf.d/cuda-10-0.conf
/usr/local/cuda/targets/x86_64-linux/lib
$ sudo ldconfig
$ sudo ldconfig -v

$ cat /usr/local/cuda/version.txt
CUDA Version 10.0.130

$ nvcc --version
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2018 NVIDIA Corporation
Built on Sat_Aug_25_21:08:01_CDT_2018
Cuda compilation tools, release 10.0, V10.0.130

$ grep -E "CUDNN_MAJOR|CUDNN_MINOR|CUDNN_PATCHLEVEL" /usr/include/x86_64-linux-gnu/cudnn_v7.h 
#define CUDNN_MAJOR 7
#define CUDNN_MINOR 4
#define CUDNN_PATCHLEVEL 1
#define CUDNN_VERSION (CUDNN_MAJOR * 1000 + CUDNN_MINOR * 100 + CUDNN_PATCHLEVEL)

$ cd /usr/local/cuda/samples/1_Utilities/deviceQuery
$ sudo make 
/usr/local/cuda-10.0/bin/nvcc -ccbin g++ -I../../common/inc  -m64    -gencode arch=compute_30,code=sm_30 -gencode arch=compute_35,code=sm_35 -gencode arch=compute_37,code=sm_37 -gencode arch=compute_50,code=sm_50 -gencode arch=compute_52,code=sm_52 -gencode arch=compute_60,code=sm_60 -gencode arch=compute_61,code=sm_61 -gencode arch=compute_70,code=sm_70 -gencode arch=compute_75,code=sm_75 -gencode arch=compute_75,code=compute_75 -o deviceQuery.o -c deviceQuery.cpp
/usr/local/cuda-10.0/bin/nvcc -ccbin g++   -m64      -gencode arch=compute_30,code=sm_30 -gencode arch=compute_35,code=sm_35 -gencode arch=compute_37,code=sm_37 -gencode arch=compute_50,code=sm_50 -gencode arch=compute_52,code=sm_52 -gencode arch=compute_60,code=sm_60 -gencode arch=compute_61,code=sm_61 -gencode arch=compute_70,code=sm_70 -gencode arch=compute_75,code=sm_75 -gencode arch=compute_75,code=compute_75 -o deviceQuery deviceQuery.o 
mkdir -p ../../bin/x86_64/linux/release
cp deviceQuery ../../bin/x86_64/linux/release

$ ./deviceQuery 
./deviceQuery Starting...

 CUDA Device Query (Runtime API) version (CUDART static linking)

Detected 1 CUDA Capable device(s)

Device 0: "GeForce GTX 950M"
  CUDA Driver Version / Runtime Version          10.1 / 10.0
  CUDA Capability Major/Minor version number:    5.0
  Total amount of global memory:                 2004 MBytes (2101870592 bytes)
  ( 5) Multiprocessors, (128) CUDA Cores/MP:     640 CUDA Cores
  GPU Max Clock rate:                            1124 MHz (1.12 GHz)
  Memory Clock rate:                             1001 Mhz
  Memory Bus Width:                              128-bit
  L2 Cache Size:                                 2097152 bytes
  Maximum Texture Dimension Size (x,y,z)         1D=(65536), 2D=(65536, 65536), 3D=(4096, 4096, 4096)
  Maximum Layered 1D Texture Size, (num) layers  1D=(16384), 2048 layers
  Maximum Layered 2D Texture Size, (num) layers  2D=(16384, 16384), 2048 layers
  Total amount of constant memory:               65536 bytes
  Total amount of shared memory per block:       49152 bytes
  Total number of registers available per block: 65536
  Warp size:                                     32
  Maximum number of threads per multiprocessor:  2048
  Maximum number of threads per block:           1024
  Max dimension size of a thread block (x,y,z): (1024, 1024, 64)
  Max dimension size of a grid size    (x,y,z): (2147483647, 65535, 65535)
  Maximum memory pitch:                          2147483647 bytes
  Texture alignment:                             512 bytes
  Concurrent copy and kernel execution:          Yes with 1 copy engine(s)
  Run time limit on kernels:                     Yes
  Integrated GPU sharing Host Memory:            No
  Support host page-locked memory mapping:       Yes
  Alignment requirement for Surfaces:            Yes
  Device has ECC support:                        Disabled
  Device supports Unified Addressing (UVA):      Yes
  Device supports Compute Preemption:            No
  Supports Cooperative Kernel Launch:            No
  Supports MultiDevice Co-op Kernel Launch:      No
  Device PCI Domain ID / Bus ID / location ID:   0 / 1 / 0
  Compute Mode:
     < Default (multiple host threads can use ::cudaSetDevice() with device simultaneously) >

deviceQuery, CUDA Driver = CUDART, CUDA Driver Version = 10.1, CUDA Runtime Version = 10.0, NumDevs = 1
Result = PASS
```

# Pthon virtual env and install package to keras
```{bash}
$ python3 -m venv venv
$ source venv/bin/activate

(venv) $ python -V
Python 3.5.2

(venv) $ pip install pip --upgrade
(venv) $ pip install setuptools --upgrade
(venv) $ pip install tensorflow-gpu keras
pip list
Package              Version
-------------------- -------
absl-py              0.7.1  
astor                0.8.0  
gast                 0.2.2  
grpcio               1.21.1 
h5py                 2.9.0  
Keras                2.2.4  
Keras-Applications   1.0.8  
Keras-Preprocessing  1.1.0  
Markdown             3.1.1  
mock                 3.0.5  
numpy                1.16.4 
pip                  19.1.1 
pkg-resources        0.0.0  
protobuf             3.8.0  
PyYAML               5.1.1  
scipy                1.3.0  
setuptools           41.0.1 
six                  1.12.0 
tensorboard          1.13.1 
tensorflow-estimator 1.13.0 
tensorflow-gpu       1.13.1 
termcolor            1.1.0  
Werkzeug             0.15.4 
wheel                0.33.4

$ python
Python 3.5.2 (default, Nov 12 2018, 13:43:14) 
[GCC 5.4.0 20160609] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import tensorflow as tf
>>> tf.__version__
'1.13.1'
``` 
