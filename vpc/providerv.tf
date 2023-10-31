terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.3.0"
    }
  }
}

provider "google" {
    project = "esoteric-code-399107"
    region = "europe-central2"
    zone = "europe-central2-a"
    credentials = "../credensial.json"
}