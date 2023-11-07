variable "project" {
  description = "Nazwa projektu w GCP"
  type = string
  default = "esoteric-code-399107"
}

variable "region" {
  description = "Nazwa regionu w GCP"
  type = string
  default = "europe-central2"
}

variable "zone" {
  description = "Nazwa zony w GCP"
  type = string
  default = "europe-central2-a"
}

variable "credensial" {
  description = "Credensials w GCP"
  type = string
  default = "../credensial.json"
}

variable "machine_t" {
  description = "Typ maszyny w GCP"
  type = string
  default = "e2-medium"
}

variable "ssh_user" {
  type        = string
  description = "SSH user for compute instance"
  default     = "tmask"
  sensitive   = false
}

variable "cloudflare_api_token" {
  description = "API token do Cloadflare"
  type = string
  default = ""
}

variable "dns_zone" {
  description = "Zona w Cloadflare"
  type = string
  default = "tmask.pl"
}
