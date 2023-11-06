resource "google_compute_firewall" "vm_ssh" {
    name    = "vm-firewall"
    network = "default"

    allow {
        protocol = "tcp"
        ports    = ["22"]
    }

    target_tags   = ["vm-instance"]
    source_ranges = ["0.0.0.0/0"]
}