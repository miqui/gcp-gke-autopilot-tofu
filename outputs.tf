output "cluster_name" {
  value = module.gke_autopilot.cluster_name
}

output "cluster_endpoint" {
  value     = module.gke_autopilot.cluster_endpoint
  sensitive = true
}

output "cluster_location" {
  value = module.gke_autopilot.cluster_location
}
