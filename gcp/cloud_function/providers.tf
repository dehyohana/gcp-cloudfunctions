terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  credentials = var.credentials
  project     = var.project
  region      = var.region
}

provider "google-beta" {
  alias       = "google-beta"
  credentials = var.credentials
  project     = var.project
  region      = var.region
}
