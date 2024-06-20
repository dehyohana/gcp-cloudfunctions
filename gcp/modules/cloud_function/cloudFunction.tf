resource "google_cloudfunctions2_function" "terraform_function" {
  name     = var.cloudfunction_name
  location = var.region

  build_config {
    runtime     = var.runtime
    entry_point = var.entry_point
    source {
      storage_source {
        bucket = var.bucket_source_name
        object = var.object_source_name
      }
    }
  }

  service_config {
    max_instance_count = 1
    available_memory   = "256M"
    timeout_seconds    = 60
    ingress_settings   = var.ingress
  }

  dynamic "event_trigger" {
    for_each = var.bucket_trigger_name != null ? [1] : []
    content {
      event_type            = "google.cloud.storage.object.v1.finalized"
      retry_policy          = "RETRY_POLICY_RETRY"
      service_account_email = var.service_account_email
      event_filters {
        attribute = "bucket"
        value     = var.bucket_trigger_name
      }
    }
  }
}
