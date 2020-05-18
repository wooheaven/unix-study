# add repository and update
```
$ curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
OK

$ distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
$ echo $distribution 
ubuntu18.04

$  curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
deb https://nvidia.github.io/libnvidia-container/ubuntu18.04/$(ARCH) /
deb https://nvidia.github.io/nvidia-container-runtime/ubuntu18.04/$(ARCH) /
deb https://nvidia.github.io/nvidia-docker/ubuntu18.04/$(ARCH) /

$ sudo apt-get update
```

# install nvidia container toolkit
```
$ sudo apt-get install -y nvidia-container-toolkit
$ sudo systemctl restart docker
```

# check nvidia container toolkit
```
$  docker run --gpus all nvidia/cuda:9.0-base nvidia-smi
Unable to find image 'nvidia/cuda:9.0-base' locally
9.0-base: Pulling from nvidia/cuda
976a760c94fc: Pull complete 
c58992f3c37b: Pull complete 
0ca0e5e7f12e: Pull complete 
f2a274cc00ca: Pull complete 
708a53113e13: Pull complete 
371ddc2ca87b: Pull complete 
f81888eb6932: Pull complete 
Digest: sha256:56bfa4e0b6d923bf47a71c91b4e00b62ea251a04425598d371a5807d6ac471cb
Status: Downloaded newer image for nvidia/cuda:9.0-base
Tue Mar 17 00:51:03 2020       
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 435.21       Driver Version: 435.21       CUDA Version: 10.1     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  GeForce GTX 1060    Off  | 00000000:01:00.0 Off |                  N/A |
| N/A   40C    P8     4W /  N/A |      7MiB /  6078MiB |      0%      Default |
+-------------------------------+----------------------+----------------------+
                                                                               
+-----------------------------------------------------------------------------+
| Processes:                                                       GPU Memory |
|  GPU       PID   Type   Process name                             Usage      |
|=============================================================================|
|  No running processes found                                                 |
+-----------------------------------------------------------------------------+

$ docker images 
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
nvidia/cuda         9.0-base            3c57055e68a2        3 months ago        140MB

$ docker ps -a
CONTAINER ID        IMAGE                  COMMAND             CREATED              STATUS                          PORTS               NAMES
a4067f26ff21        nvidia/cuda:9.0-base   "nvidia-smi"        About a minute ago   Exited (0) About a minute ago                       sweet_hypatia
```
