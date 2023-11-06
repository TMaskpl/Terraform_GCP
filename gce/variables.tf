variable "project" {
  type = string
  default = "esoteric-code-399107"
}

variable "region" {
  type = string
  default = "europe-central2"
}

variable "zone" {
  type = string
  default = "europe-central2-a"
}

variable "credensial" {
  type = string
  default = "../credensial.json"
}

variable "machine_t" {
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
  type = string
  default = ""
}

variable "dns_zone" {
  type = string
  default = "tmask.pl"
}
