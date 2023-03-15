
KIND_CLUSTER_NAME?=kind
KIND_ADDITIONAL_ARGS?=

# prepare setup
.PHONY: create-kind-cluster
deploy-kind-cluster:
	kind create cluster ${KIND_ADDITIONAL_ARGS} --name ${KIND_CLUSTER_NAME}  --config=./kind/kind.yml

.PHONY: delete-kind-cluster
delete-kind-cluster:
	kind delete cluster --name ${KIND_CLUSTER_NAME}

.PHONY: deploy-minikube-cluster
deploy-minikube-cluster:
	minikube start --cpus 3 --memory 8192 --nodes 2

.PHONY: delete-minikube-cluster
delete-minikube-cluster:
	minikube delete
 
.PHONY: deploy-docker
deploy-docker:
	docker-compose -f ./deploy/docker-compose.yml up -d

.PHONY: stop-docker
stop-docker:
	docker-compose -f ./deploy/docker-compose.yml down

.PHONY: deploy-setup
deploy-setup:
	helmsman -f ./deploy/setup.yaml -apply


