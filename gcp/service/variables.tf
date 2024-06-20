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
  description = "region to be used"
}

#Cloud Storage variables
variable "bucket_name" {
  type        = string
  description = "Bucket's name to be created"
}

#Object storage variables
variable "object_name" {
  type        = string
  description = "Object name to be created"
}
