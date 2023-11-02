resource "google_compute_network" "auto-vpc" {
    name = "auto-vpc"
    auto_create_subnetworks = true
}

resource "google_compute_network" "custom-vpc" {
    name = "custom-vpc"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "network-europe-central2" {
    name          = "network-europe-central2"
    ip_cidr_range = "172.16.88.0/24"
    region        = "europe-central2"
    network       = google_compute_network.custom-vpc
}

output "auto" {
    value = google_compute_network.auto-vpc.id
}

output "custom" {
    value = google_compute_network.custom-vpc.id
}