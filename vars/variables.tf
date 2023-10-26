variable "f_name" {
  type = string
  default = "example.txt"
  description = "Zawsze trzeba uzupełnić"
}

variable "f_cont" {
  type = string
  default = "Kurs Terraform GCP"
  description = "Zawsze trzeba uzupełnić"
}

variable "f_perms" {
  type = string
  default = "0644"
  description = "Zawsze trzeba uzupełnić"
}

variable "input_zones" {
  type = list
  default = ["us-west-1a","us-west-2a","us-west-3a","us-west-4a"]
  description = "Zawsze trzeba uzupełnić"
}