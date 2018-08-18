# ref

[ install nvidia-docker v2 ] : https://github.com/NVIDIA/nvidia-docker/wiki/Installation-(version-2.0) 

[ repository force pick Xenial x86_64 ] : https://nvidia.github.io/nvidia-docker/

```{bash}
# key and repository
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu16.04/amd64/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
```

```{bash}
# install nvidia-docker2
sudo apt-get install nvidia-docker2
sudo pkill -SIGHUP dockerd
```
