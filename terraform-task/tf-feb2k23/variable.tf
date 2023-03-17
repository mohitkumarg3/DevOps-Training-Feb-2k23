variable "prometheus_namespace" {
  type        = string
  description = "Kubernetes Namespace for prometheus"
  default = ""
}

variable "prometheus_chart" {
  type        = string
  description = "Helm chart Name for prometheus"
  default = ""
}

variable "prometheus_repo" {
  type        = string
  description = "Helm repo for prometheus"
  default = ""
}