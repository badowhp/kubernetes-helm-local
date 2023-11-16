# local lab

- Test helm deployments and values in local cluster deployment

## requirements

- https://github.com/Praqma/helmsman
- go + docker/podman

choose one which fits the most ure usecase:
- https://github.com/kubernetes/minikube
- https://kind.sigs.k8s.io/

other Option to install:

- https://rancherdesktop.io/ 

## how to

minikube:

- make deploy-minkube-cluster

- make deploy-setup

- make delete-minikube-cluster

kind

- make deploy-kind-cluster

- make deploy-setup

- make delete-kind-cluster


