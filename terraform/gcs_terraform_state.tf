# Terraform State Backend Storage

resource "google_storage_bucket" "terraform_state" {
  name          = "${var.project_id}-gke-terraform_state"
  force_destroy = false
  location      = var.region
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

