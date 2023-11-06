terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.3.0"
    }

      cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "google" {
    project = var.project
    region = var.region
    zone = var.zone
    credentials = var.credensial
}

provider "tls" {
  
}

provider "local" {
  
}


provider "cloudflare" {
  api_token = var.cloudflare_api_token
}