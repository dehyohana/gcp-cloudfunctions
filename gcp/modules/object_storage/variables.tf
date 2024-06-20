#Object storage variables
variable "bucket_name" {
  type        = string
  description = "The name of the containing bucket"
}

variable "object_name" {
  type        = string
  description = "Object name to be created"
}

variable "object_source" {
  type        = string
  description = "A path to the data you want to upload"
}

variable "content_type" {
  type        = string
  description = "Type of the object being uploaded (e.g: application/json; text/plain)"
}
