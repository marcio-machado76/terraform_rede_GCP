terraform {
  required_version = "~> 0.14"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0"
    }
  }
}

locals {
  project = var.project
  region  = var.gcp_region
}

provider "google" {
  project     = local.project
  region      = local.region
  credentials = file(var.credential)
}


