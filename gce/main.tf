resource "google_compute_instance" "vm-from-tf" {
    name = "vm-from-tf"
    zone = var.zone
    machine_type = var.machine_t
    tags = ["vm-instance"]

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

    metadata = {
    ssh-keys               = "${var.ssh_user}:${local_file.public_key.content}"
    block-project-ssh-keys = true
    }
}
