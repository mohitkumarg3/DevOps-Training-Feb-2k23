provider "helm" {
  kubernetes {
    config_context_cluster = "minikube"
    config_path = "~/.kube/config"
  }
}

