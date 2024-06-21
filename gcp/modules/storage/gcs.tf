resource "google_storage_bucket" "terraform_bucket" {
  name                        = var.bucket_name
  location                    = var.location
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  force_destroy               = false
}
