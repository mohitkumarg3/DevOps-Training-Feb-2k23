output "chart_name" {
  description = "Deployed prometheus helm chart name"
  value       = helm_release.prometheus.name
}

output "release_id" {
  description = "Release name of the prometheus helm chart"
  value       = helm_release.prometheus.id
}

output "release_status" {
  description = "Release Status of the deployed prometheus helm chart"
  value       =  helm_release.prometheus.status
}
