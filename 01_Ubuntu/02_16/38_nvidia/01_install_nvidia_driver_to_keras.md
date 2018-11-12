# find Nvidia GPU's name and Compute Capability
```
https://developer.nvidia.com/cuda-gpus
# GTS 450  = Compute Capability 2.1
# GTX 950M = Compute Capability 5.0
```

# find Compute Capability and CUDA SDK
```
https://en.wikipedia.org/wiki/CUDA
# Compute Capability 2.1 = CUDA SDK 7.5 ~  8.0
# Compute Capability 5.0 = CUDA SDK 6.5 ~ 10.0
```

# find CUDA SDK and cuDNN and Tensorflow
```
https://www.tensorflow.org/install/source#tested_source_configurations
# CUDA SDK 8 = cuDNN 6 = tensorflow_gpu-1.4.0
# CUDA SDK 9 = cuDNN 7 = tensorflow_gpu-1.11.0
```

# find Tensorflow and Keras and Python
```{text}
https://www.tensorflow.org/install/gpu  
https://docs.floydhub.com/guides/environments/  
tensorflow_gpu-1.4.0  = Keras 2.0.8 = Python 3.6
tensorflow_gpu-1.11.0 = Keras 2.2.0 = Python 3.6
```

# overview
```
NVidia Driver  410.73
CUDA           9.0.176
cuDNN          7.4
Tensorflow-GPU 1.12.0
Keras          2.2.4
Python         3.6.7
```

# NVidia Driver 
```{bash}
# Ctrl + Alt + F1
$ sudo service lightdm stop
$ sudo apt-get remove --purge nvidia*
$ sudo apt-get autoremove
$ sudo add-apt-repository ppa:graphics-drivers/ppa
$ sudo apt-get update
$ apt-cache search nvidia
$ sudo ubuntu-drivers autoinstall
$ ubuntu@ubuntu:~$ nvidia-smi
Mon Nov 12 18:38:29 2018
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 410.73       Driver Version: 410.73       CUDA Version: 10.0     |
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

$ sudo reboot
```

# CUDA
```{bash}
# https://developer.nvidia.com/cuda-90-download-archive
# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#runfile
$ sudo sh cuda_9.0.176_384.81_linux.run
...
-----------------
Do you accept the previously read EULA?
accept/decline/quit: accept

Install NVIDIA Accelerated Graphics Driver for Linux-x86_64 384.81?
(y)es/(n)o/(q)uit: n

Install the CUDA 9.0 Toolkit?
(y)es/(n)o/(q)uit: y

Enter Toolkit Location
 [ default is /usr/local/cuda-9.0 ]:

Do you want to install a symbolic link at /usr/local/cuda?
(y)es/(n)o/(q)uit: y

Install the CUDA 9.0 Samples?
(y)es/(n)o/(q)uit: y

Enter CUDA Samples Location
 [ default is /home/ubuntu ]:

Installing the CUDA Toolkit in /usr/local/cuda-9.0 ...
Missing recommended library: libXmu.so

Installing the CUDA Samples in /home/ubuntu ...
Copying samples to /home/ubuntu/NVIDIA_CUDA-9.0_Samples now...
Finished copying samples.

===========
= Summary =
===========

Driver:   Not Selected
Toolkit:  Installed in /usr/local/cuda-9.0
Samples:  Installed in /home/ubuntu, but missing recommended libraries

Please make sure that
 -   PATH includes /usr/local/cuda-9.0/bin
 -   LD_LIBRARY_PATH includes /usr/local/cuda-9.0/lib64, or, add /usr/local/cuda-9.0/lib64 to /etc/ld.so.conf and run ldconfig as root

To uninstall the CUDA Toolkit, run the uninstall script in /usr/local/cuda-9.0/bin

Please see CUDA_Installation_Guide_Linux.pdf in /usr/local/cuda-9.0/doc/pdf for detailed information on setting up CUDA.

***WARNING: Incomplete installation! This installation did not install the CUDA Driver. A driver of version at least 384.00 is required for CUDA 9.0 functionality to work.
To install the driver using this installer, run the following command, replacing <CudaInstaller> with the name of this run file:
    sudo <CudaInstaller>.run -silent -driver

Logfile is /tmp/cuda_install_15115.log

$ vi ~/.profile
...
# CUDA
export PATH=$PATH:/usr/local/cuda-9.0/bin

$ sudo vi /etc/ld.so.conf.d/cuda.conf
/usr/local/cuda/lib64/

$ sudo ldconfig

$ sudo ldconfig -v | head -30
/sbin/ldconfig.real: Can't stat /lib/i686-linux-gnu: No such file or directory
/sbin/ldconfig.real: Can't stat /usr/lib/i686-linux-gnu: No such file or directory
/sbin/ldconfig.real: Path `/usr/lib/nvidia-410' given more than once
/sbin/ldconfig.real: Path `/usr/lib32/nvidia-410' given more than once
/sbin/ldconfig.real: Path `/lib/x86_64-linux-gnu' given more than once
/sbin/ldconfig.real: Path `/usr/lib/x86_64-linux-gnu' given more than once
/sbin/ldconfig.real: /lib/i386-linux-gnu/ld-2.23.so is the dynamic linker, ignoring

/usr/local/cuda/lib64:
    libnppidei.so.9.0 -> libnppidei.so.9.0.176
    libnppig.so.9.0 -> libnppig.so.9.0.176
    libnppicc.so.9.0 -> libnppicc.so.9.0.176
    libnppim.so.9.0 -> libnppim.so.9.0.176
    libnvToolsExt.so.1 -> libnvToolsExt.so.1.0.0
    libOpenCL.so.1 -> libOpenCL.so.1.0.0
    libnvrtc-builtins.so.9.0 -> libnvrtc-builtins.so.9.0.176
    libcudart.so.9.0 -> libcudart.so.9.0.176
    libnppicom.so.9.0 -> libnppicom.so.9.0.176
    libcusparse.so.9.0 -> libcusparse.so.9.0.176
    libcublas.so.9.0 -> libcublas.so.9.0.176
    libnpps.so.9.0 -> libnpps.so.9.0.176
    libnppial.so.9.0 -> libnppial.so.9.0.176
    libnppisu.so.9.0 -> libnppisu.so.9.0.176
    libnppist.so.9.0 -> libnppist.so.9.0.176
    libcufft.so.9.0 -> libcufft.so.9.0.176
    libnppitc.so.9.0 -> libnppitc.so.9.0.176
    libcufftw.so.9.0 -> libcufftw.so.9.0.176
    libcusolver.so.9.0 -> libcusolver.so.9.0.176
    libaccinj64.so.9.0 -> libaccinj64.so.9.0.176
    libnppc.so.9.0 -> libnppc.so.9.0.176
    libcurand.so.9.0 -> libcurand.so.9.0.176
    libnvrtc.so.9.0 -> libnvrtc.so.9.0.176
    libnvgraph.so.9.0 -> libnvgraph.so.9.0.176
    libnvblas.so.9.0 -> libnvblas.so.9.0.176
    libcuinj64.so.9.0 -> libcuinj64.so.9.0.176
    libnppif.so.9.0 -> libnppif.so.9.0.176
/usr/lib/x86_64-linux-gnu/libfakeroot:
    libfakeroot-0.so -> libfakeroot-tcp.so

$ cat /usr/local/cuda/version.txt
CUDA Version 9.0.176

$ nvcc --version
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2017 NVIDIA Corporation
Built on Fri_Sep__1_21:08:03_CDT_2017
Cuda compilation tools, release 9.0, V9.0.176
```

# cuDNN
```{bash}
# https://developer.nvidia.com/rdp/cudnn-download
$ ll
total 242680
drwxrwxr-x 2 ubuntu ubuntu      4096 Nov 12 16:41 ./
drwxrwxr-x 4 ubuntu ubuntu      4096 Nov 12 16:41 ../
-rw-r--r-- 1 ubuntu ubuntu 126462586 Nov 12 16:12 libcudnn7_7.4.1.5-1+cuda9.0_amd64.deb
-rw-r--r-- 1 ubuntu ubuntu 117057602 Nov 12 16:12 libcudnn7-dev_7.4.1.5-1+cuda9.0_amd64.deb
-rw-r--r-- 1 ubuntu ubuntu   4972442 Nov 12 16:12 libcudnn7-doc_7.4.1.5-1+cuda9.0_amd64.deb

$ sudo dpkg -i libcudnn7_7.4.1.5-1+cuda9.0_amd64.deb
(Reading database ... 233861 files and directories currently installed.)
Preparing to unpack libcudnn7_7.4.1.5-1+cuda9.0_amd64.deb ...
Unpacking libcudnn7 (7.4.1.5-1+cuda9.0) over (7.4.1.5-1+cuda9.0) ...
Setting up libcudnn7 (7.4.1.5-1+cuda9.0) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...

$ sudo dpkg -i libcudnn7-dev_7.4.1.5-1+cuda9.0_amd64.deb
(Reading database ... 233861 files and directories currently installed.)
Preparing to unpack libcudnn7-dev_7.4.1.5-1+cuda9.0_amd64.deb ...
update-alternatives: removing manually selected alternative - switching libcudnn to auto mode
Unpacking libcudnn7-dev (7.4.1.5-1+cuda9.0) over (7.4.1.5-1+cuda9.0) ...
Setting up libcudnn7-dev (7.4.1.5-1+cuda9.0) ...
update-alternatives: using /usr/include/x86_64-linux-gnu/cudnn_v7.h to provide /usr/include/cudnn.h (libcudnn) in auto mode

$ sudo dpkg -i libcudnn7-doc_7.4.1.5-1+cuda9.0_amd64.deb
(Reading database ... 233861 files and directories currently installed.)
Preparing to unpack libcudnn7-doc_7.4.1.5-1+cuda9.0_amd64.deb ...
Unpacking libcudnn7-doc (7.4.1.5-1+cuda9.0) over (7.4.1.5-1+cuda9.0) ...
Setting up libcudnn7-doc (7.4.1.5-1+cuda9.0) ...

$ cat /usr/include/cudnn.h | grep -E "CUDNN_MAJOR|CUDNN_MINOR|CUDNN_PATCHLEVEL"
#define CUDNN_MAJOR 7
#define CUDNN_MINOR 4
#define CUDNN_PATCHLEVEL 1
```

# Pthon virtual env and install package to keras
```{bash}
$ python3.6 -m venv myvenv
$ source myenv/bin/activate
$ (myvenv) $ pip install pillow numpy matplotlib h5py tensorflow-gpu keras
```
