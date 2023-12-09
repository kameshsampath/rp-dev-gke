output "rcp_region" {
  value       = var.gcp_region
  description = "Google Cloud Region"
}

output "gcp_project" {
  value       = var.gcp_region
  description = "Google Cloud Project ID"
}

output "zone" {
  value       = local.google_zone
  description = "Google Cloud Zone"
}

output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Host"
}

