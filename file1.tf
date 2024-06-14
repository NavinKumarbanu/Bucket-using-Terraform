provider "google" {
  credentials = file("alien-house-421716-96d65286a9e2")
  project     = "alien-house-421716"
  region      = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "my_1st_bucket"
  location      = "US"
  force_destroy = true
  
  labels = {
    environment = "dev"
  }
}
