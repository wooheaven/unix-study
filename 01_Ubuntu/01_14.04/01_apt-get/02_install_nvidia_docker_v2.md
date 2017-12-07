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
