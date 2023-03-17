resource "helm_release" "prometheus" {
  name             = "prometheus"
  chart            = var.prometheus_chart
  repository       = var.prometheus_repo
  namespace        = var.prometheus_namespace
  version          = "14.3.0"
  create_namespace = true
  wait             = true

  set {
    name  = "nodeExporter.enabled"
    value = true
  }
  set {
    name  = "service.type"
    value = "NodePort"
  }
}