#!/bin/bash
# Terraform State Backend Storage
# We create a GCP Bucket to store Terraform state
# Bucket Naming Convention: PROJECT_ID-gke-terraform_state

gcloud storage buckets create gs://deft-observer-410308-gke-terraform_state \
  --project=deft-observer-410308 \
  --impersonate-sservice-account=terraform-automation@deft-observer-410308.iam.gserviceaccount.com \
  --default-storage-class=STANDARD \
  --location=us \
  --pap \
  --placement=us-central1,us-west1 \
  --soft-delete-duration=2w1d \


