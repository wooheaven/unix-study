# find Nvidia GPU's name and Compute Capability
```
https://developer.nvidia.com/cuda-gpus
# GTS 450  = Compute Capability 2.1
# GTX 950M = Compute Capability 5.0
```

# find Compute Capability and CUDA SDK
```
https://en.wikipedia.org/wiki/CUDA
# Compute Capability 2.1 = CUDA SDK 7.5 <=  8.0
# Compute Capability 5.0 = CUDA SDK 6.5 <= 10.0
```

# find CUDA SDK and cuDNN and Tensorflow
```
https://www.tensorflow.org/install/source#tested_source_configurations
# CUDA SDK 8 = cuDNN 6 = tensorflow_gpu-1.4.0
# CUDA SDK 9 = cuDNN 7 = tensorflow_gpu-1.11.0
```

# find Tensorflow and Keras and Python
```
https://docs.floydhub.com/guides/environments/
tensorflow_gpu-1.4.0  = Keras 2.0.8 = Python 3.6
tensorflow_gpu-1.11.0 = Keras 2.2.0 = Python 3.6
```

# repository
```{bash}
$ sudo sh -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /" >> /etc/apt/sources.list.d/cuda.list'
$ sudo sh -c 'echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /" >> /etc/apt/sources.list.d/cuda.list'

$ cat /etc/apt/sources.list.d/cuda.list
deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /
deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /

$ sudo apt-get update
```

# CUDA
```{bash}
$ sudo apt-get install cuda-9-0
```

# cuDNN
```{bash}
$ sudo apt-get install libcudnn7-dev
```

# check install
```{bash}
$ cat /usr/local/cuda/version.txt
CUDA Version 9.0.176

$ cat /usr/include/cudnn.h | grep -E "CUDNN_MAJOR|CUDNN_MINOR|CUDNN_PATCHLEVEL"
#define CUDNN_MAJOR 7
#define CUDNN_MINOR 1
#define CUDNN_PATCHLEVEL 1
#define CUDNN_VERSION    (CUDNN_MAJOR * 1000 + CUDNN_MINOR * 100 + CUDNN_PATCHLEVEL)
```
