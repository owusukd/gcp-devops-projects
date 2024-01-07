# Define all the variables needed
# for the creation of the GKE Cluster

variable "project_id" {
  description = "GCloud Project ID"
  type = string
}

variable "region" {
  description = "GCloud Region"
  type = string
}

variable "gke_num_nodes" {
  default = 2
  description = "Number of GKE Nodes"
  type = number
}

variable "gcp_auth_file" {
  type = string
  description = "GCP Authentication File"
}