# Cloud provider details 

provider "google" {
  project = var.project_id
  region = var.region
  credentials = file(var.gcp_auth_file)
}