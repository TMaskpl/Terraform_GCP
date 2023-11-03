resource "google_compute_instance" "vm-from-tf" {
    name = "vm-from-tf"
    zone = var.zone
    machine_type = var.machine_t
    tags = ["terraform", "tmask"]

    boot_disk {
        initialize_params {
        image = "debian-cloud/debian-11"
        size = 20
        }
    }

    network_interface {
        network = "default"
        access_config {
            // Ephemeral public IP
        }
    }
}

resource "local_file" "ext-ip-f" {
    content  = "${google_compute_instance.vm-from-tf.network_interface.0.access_config.0.nat_ip}"
    filename = "hosts"
}

output "ext-ip" {
    value = "${google_compute_instance.vm-from-tf.network_interface.0.access_config.0.nat_ip}"
}