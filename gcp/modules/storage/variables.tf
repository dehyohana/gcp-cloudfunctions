# GCS Cloud Storage variables
variable "bucket_name" {
  type        = string
  description = "Bucket's name to be created"
}

variable "location" {
  type        = string
  description = "The GCS location"
}
