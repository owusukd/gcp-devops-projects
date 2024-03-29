# Output cluster name and endpoint
# Project ID
# GCP Region

output "project_id" {
  value = var.project_id
  description = "GCloud Project ID"
}

output "region" {
  value = var.region
  description = "GCloud Region"
}

output "kubernetes_cluster_name" {
  value = google_container_cluster.myCluster.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value = google_container_cluster.myCluster.endpoint
  description = "GKE Cluster Host"
}
output "client_certificate" {
  value = "${google_container_cluster.myCluster.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.myCluster.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.myCluster.master_auth.0.cluster_ca_certificate}"
}