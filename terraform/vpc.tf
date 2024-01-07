# Create a VPC for our Cluster

# VPC
resource "google_compute_network" "myCluster_vpc" {
  name = "${var.project_id}-gke-vpc"
  auto_create_subnetworks = false
}

# Subnet
resource "google_compute_subnetwork" "myCluster_subnet" {
  name = "${var.project_id}-gke-subnet"
  region = var.region
  network = google_compute_network.myCluster_vpc.name
  ip_cidr_range = "10.10.0.0/24"  
}
