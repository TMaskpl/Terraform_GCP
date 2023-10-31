resource "google_storage_bucket" "bucket-from-tf1" {
    name = "bucket-from-tf1"
    location = "europe-central2"
    labels = {
        "gcp" = "cloud-storage"
        "terraform" = "storage-branch"
    }
    storage_class = "NEARLINE"
    uniform_bucket_level_access = false
    lifecycle_rule {
        condition {
            age = 20
        }
        action {
            type = "SetStorageClass"
            storage_class = "ARCHIVE"
        }
    }
    retention_policy {
        retention_period = 86400
    }
}

resource "google_storage_bucket_object" "gcp-object" {
    name = "gcp-object"
    bucket = google_storage_bucket.bucket-from-tf1.name
    source = "./Kris-Pol.pdf"
}

resource "google_storage_object_access_control" "view-rule" {
    bucket = google_storage_bucket.bucket-from-tf1.name
    object = google_storage_bucket_object.gcp-object.name
    role = "READER"
    entity = "allUsers"
}

output "web_link" {
    value = google_storage_bucket_object.gcp-object.media_link
}