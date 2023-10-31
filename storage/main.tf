resource "google_storage_bucket" "bucket-from-tf1" {
    name = "bucket-from-tf1"
    location = "europe-central2"
    labels = {
      "gcp" = "cloud-storage"
      "terraform" = "storage-branch"
    }
}