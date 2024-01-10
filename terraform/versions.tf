# Terraform Version Details

terraform {
  backend "gcs" {
    bucket = "deft-observer-410308-gke-terraform_state"
  }

  required_providers {
    google = {
        source = "hashicorp/google"
        version = ">= 5.7.0"
    }
  }
  required_version = ">= 0.14"
}