resource "google_storage_bucket_object" "terraform_object" {
  name         = var.object_name
  bucket       = var.bucket_name
  content_type = var.content_type
  source       = var.object_source
}
