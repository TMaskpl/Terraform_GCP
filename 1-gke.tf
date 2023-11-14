resource "google_container_cluster" "primary" {
  name = "my-gke-cluster"
  location = var.region
  initial_node_count = 1

  node_locations = [
    var.var.zone
  ]

  addons_config {
    http_load_balancing {
      disabled = true
    }

    horizontal_pod_autoscaling {
      disabled = false
    }
  }

  release_channel {
    channel = "REGULAR"
  }
}

resource "google_container_node_pool" "primary_preemitible_node" {
  name = "my-node-pool"
  location = var.region
  cluster = google_container_cluster.primary.name
  node_count = 1

  management {
    auto_repair = true
    auto_upgrade = true
  }

  node_config {
    preemptible = true
    machine_type = var.machine_t

    labels = {
      dev = "dev"
    }
  }
}