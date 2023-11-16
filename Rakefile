KIND_CLUSTER_NAME = "kind"
KIND_ADDITIONAL_ARGS = ""

task :create_kind_cluster do
  sh "kind create cluster #{ENV['KIND_ADDITIONAL_ARGS']} --name #{ENV['KIND_CLUSTER_NAME']} --config=./kind/kind.yml"
end

task :delete_kind_cluster do
  sh "kind delete cluster --name #{ENV['KIND_CLUSTER_NAME']}"
end

task :deploy_minikube_cluster do
  sh "minikube start --cpus 3 --memory 8192 --nodes 2"
end

task :delete_minikube_cluster do
  sh "minikube delete"
end

task :deploy_docker do
  sh "docker-compose -f ./deploy/docker-compose.yml up -d"
end

task :stop_docker do
  sh "docker-compose -f ./deploy/docker-compose.yml down"
end

task :deploy_setup do
  sh "helmsman -f ./deploy/setup.yaml -apply"
end
