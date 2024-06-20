output "object_id" {
  description = "object stored properties"
  value       = google_storage_bucket_object.terraform_object.id
}
