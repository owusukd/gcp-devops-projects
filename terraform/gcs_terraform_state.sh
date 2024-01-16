#!/bin/bash
# Terraform State Backend Storage
# We create a GCP Bucket to store Terraform state
# Bucket Naming Convention: PROJECT_ID-gke-terraform_state

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/Desktop/DevOps_Training/GCP/deft-observer-410308-96cd199523bf.json"    # sa-key.json file path

gcloud auth activate-service-account --key-file=$GOOGLE_APPLICATION_CREDENTIALS                                       # to allow gcloud to use sa

gcloud storage buckets create gs://deft-observer-410308-gke-terraform_state \
  --project=deft-observer-410308 \
  --impersonate-service-account=terraform-automation@deft-observer-410308.iam.gserviceaccount.com \
  --default-storage-class=STANDARD \
  --location=us \
  --pap \
  --placement=us-central1,us-west1


