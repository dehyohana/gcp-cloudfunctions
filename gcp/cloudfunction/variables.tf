#GCP Variables
variable "credentials" {
  type        = string
  description = "Service account JSON credentials for Google Cloud Platform"
}

variable "project" {
  type        = string
  description = "Project to be used"
}

variable "region" {
  type        = string
  description = "Region to be used"
}

#Cloud Storage variables
variable "bucket_source_name" {
  type        = string
  description = "GCS bucket containing the source for Cloud Functions deploy"
}

#Object storage variables
variable "object_source_name" {
  type        = string
  description = "Name of the object to be created"
}

variable "code_source" {
  type        = string
  description = "Path to code to be deployed in cloud function"
}

#Cloud Function Variables
variable "cloudfunction_name" {
  type        = string
  description = "Name of the cloud function service"
}

variable "runtime" {
  type        = string
  description = "The runtime in which to run the function"
  default     = "python311"
}

variable "entry_point" {
  type        = string
  description = "The name of the function (as defined in source code) that will be executed"
}

variable "ingress" {
  type        = string
  description = "Available ingress settings, Defaults to ALLOW_INTERNAL_AND_GCLB. Possible values are: ALLOW_ALL, ALLOW_INTERNAL_ONLY, ALLOW_INTERNAL_AND_GCLB"
  default     = "ALLOW_INTERNAL_AND_GCLB"
}

variable "bucket_trigger_name" {
  type        = string
  description = "Name of the bucket that triggers Cloud Function. If null, not eventarc will be created"
  default     = null
}

variable "service_account_email" {
  type        = string
  description = "Name of the service account to deploy eventarc"
}
