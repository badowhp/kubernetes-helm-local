# local lab

- Test helm deployments and values in local cluster deployment

## requirements

- https://github.com/Praqma/helmsman
- https://github.com/kubernetes/minikube
- https://kind.sigs.k8s.io/
- go + docker

## how to

minikube:

- make deploy-minkube-cluster

- make deploy-setup

- make delete-minikube-cluster

kind

- make deploy-kind-cluster

- make deploy-setup

- make delete-kind-cluster

With the kind cluster you can access the ingress via localhost with the configuration provided in ingress values.
I recommend you to try both solutions.

ToDO: add insecure to argo values


