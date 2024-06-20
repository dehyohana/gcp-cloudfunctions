terraform {
  backend "gcs" {
    bucket      = "terraform-gcp-function-state"
    prefix      = "terraform/cloudfunction/state"
    credentials = "credentials.json"
  }
}
