terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.30.0"
    }
  }
  backend "gcs" {
    prefix = "state/cloud-sql"
    bucket = "k8s-bucket-tfstate-rand"
  }
 }

provider "google" {
  project     = "dtonic-demo-k8s"
  region      = "europe-north1"
}

