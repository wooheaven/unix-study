# 1st install k8s : micork8s = standalone native k8s
```
$ sudo snap install microk8s --classic
microk8s v1.17.3 from Canonical✓ installed

$ sudo microk8s.status --wait-ready
microk8s is running
addons:
cilium: disabled
dashboard: disabled
dns: disabled
fluentd: disabled
gpu: disabled
helm3: disabled
helm: disabled
ingress: disabled
istio: disabled
jaeger: disabled
juju: disabled
knative: disabled
kubeflow: disabled
linkerd: disabled
metallb: disabled
metrics-server: disabled
prometheus: disabled
rbac: disabled
registry: disabled
storage: disabled 
```

# 2nd add $USER to $GROUP microk8s
```
$ microk8s.status --wait-ready
Insufficient permissions to access MicroK8s.
You can either try again with sudo or add the user bigdata to the 'microk8s' group:

    sudo usermod -a -G microk8s bigdata

The new group will be available on the user's next login.

$ sudo usermod -a -G microk8s bigdata
$ su - $USER

$ microk8s.start 
Started.
Enabling pod scheduling
node/bigdata already uncordoned
```

# 3rd (after NVIDIA graphic driver installed) enable gpu on microk8s
```
$ sudo microk8s.enable gpu
Enabling NVIDIA GPU
Aborting: NVIDIA kernel module not loaded.
Please ensure you have CUDA capable hardware and the NVIDIA drivers installed.
Failed to enable gpu

# after NVIDIA graphic driver installed

$ sudo microk8s.enable gpu
Enabling NVIDIA GPU
NVIDIA kernel module detected
Enabling DNS
Applying manifest
serviceaccount/coredns created
configmap/coredns created
deployment.apps/coredns created
service/kube-dns created
clusterrole.rbac.authorization.k8s.io/coredns created
clusterrolebinding.rbac.authorization.k8s.io/coredns created
Restarting kubelet
DNS is enabled
Applying manifest
daemonset.apps/nvidia-device-plugin-daemonset created
NVIDIA is enabled

$ microk8s.status --wait-ready
microk8s is running
addons:
cilium: disabled
dashboard: disabled
dns: enabled
fluentd: disabled
gpu: enabled
helm3: disabled
helm: disabled
ingress: disabled
istio: disabled
jaeger: disabled
juju: disabled
knative: disabled
kubeflow: disabled
linkerd: disabled
metallb: disabled
metrics-server: disabled
prometheus: disabled
rbac: disabled
registry: disabled
storage: disabled
```

# 4th install kubeflow
```
$ microk8s.enable kubeflow
Enabling dns...
Enabling storage...
Enabling dashboard...
Enabling ingress...
Enabling rbac...
Deploying Kubeflow...
Kubeflow deployed.
Waiting for operator pods to become ready.
Waited 0s for operator pods to come up, 4 remaining.
Waited 15s for operator pods to come up, 5 remaining.
Waited 30s for operator pods to come up, 5 remaining.
Waited 45s for operator pods to come up, 5 remaining.
Waited 60s for operator pods to come up, 5 remaining.
Waited 75s for operator pods to come up, 5 remaining.
Waited 90s for operator pods to come up, 3 remaining.
Waited 105s for operator pods to come up, 1 remaining.
Waited 120s for operator pods to come up, 1 remaining.
Waited 135s for operator pods to come up, 1 remaining.
Operator pods ready.
Waiting for service pods to become ready.

Congratulations, Kubeflow is now available.
The dashboard is available at https://localhost/

    Username: admin
    Password: GUBTRIX0GKSJ2MVSKXZYXPUJPD453F

To see these values again, run:

    microk8s.juju config kubeflow-gatekeeper username
    microk8s.juju config kubeflow-gatekeeper password

To tear down Kubeflow and associated infrastructure, run:

   microk8s.disable kubeflow
```

# 5th k8s start -> enable.kubeflow -> disable.kubeflow -> k8s.stop
```
$ microk8s.start
$ microk8s.enable kubeflow
$ microk8s.disable kubeflow
Disabling Kubeflow...
Destroying controller
Waiting for hosted model resources to be reclaimed
Waiting on 1 model, 31 applications, 5 volumes, 5 filesystems
Waiting on 1 model, 30 applications, 5 volumes, 5 filesystems
Waiting on 1 model, 29 applications, 5 volumes, 5 filesystems
Waiting on 1 model, 28 applications, 5 volumes, 5 filesystems
Waiting on 1 model, 27 applications, 5 volumes, 5 filesystems
Waiting on 1 model, 26 applications, 5 volumes, 5 filesystems
Waiting on 1 model, 25 applications, 5 volumes, 5 filesystems
Waiting on 1 model, 24 applications, 5 volumes, 5 filesystems
Waiting on 1 model, 24 applications, 5 volumes, 2 filesystems
Waiting on 1 model, 24 applications, 5 volumes
Waiting on 1 model, 23 applications, 5 volumes
Waiting on 1 model, 23 applications, 4 volumes
Waiting on 1 model, 22 applications, 4 volumes
Waiting on 1 model, 21 applications, 4 volumes
Waiting on 1 model, 21 applications, 1 volume
Waiting on 1 model, 20 applications
Waiting on 1 model, 19 applications
Waiting on 1 model, 18 applications
Waiting on 1 model, 17 applications
Waiting on 1 model, 16 applications
Waiting on 1 model, 15 applications
Waiting on 1 model, 14 applications
Waiting on 1 model, 13 applications
Waiting on 1 model, 11 applications
Waiting on 1 model, 10 applications
Waiting on 1 model, 9 applications
Waiting on 1 model, 8 applications
Waiting on 1 model, 7 applications
Waiting on 1 model, 6 applications
Waiting on 1 model, 5 applications
Waiting on 1 model, 5 applications
Waiting on 1 model, 4 applications
Waiting on 1 model, 4 applications
Waiting on 1 model, 3 applications
Waiting on 1 model, 2 applications
Waiting on 1 model, 1 application
Waiting on 1 model
All hosted models reclaimed, cleaning up controller machines
Juju now comes bundled with MicroK8s; this script has been deprecated.
Kubeflow is now disabled.

$ microk8s.stop
```
