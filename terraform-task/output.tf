output "prometheus_chart" {
  description = "Deployed prometheus helm chart name"
  value       = module.prometheus.chart_name
}

output "prometheus_id" {
  description = "Release id of the prometheus helm chart"
  value       = module.prometheus.release_id
}

output "prometheus_status" {
  description = "Release Status of the deployed prometheus helm chart"
  value       =  module.prometheus.release_status
}
