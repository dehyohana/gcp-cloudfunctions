terraform {
  backend "gcs" {
    bucket      = "terraform-gcp-function-state"
    prefix      = "terraform/state"
    credentials = "credentials.json"
  }
}
