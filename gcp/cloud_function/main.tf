#Bucket where code source will be stored
module "bucket_source" {
  source = "../modules/storage"

  bucket_name = var.bucket_source_name
  location    = var.region
}

#Source code
module "source_code" {
  source     = "../modules/object_storage"
  depends_on = [module.bucket_source]

  bucket_name   = var.bucket_source_name
  object_name   = var.object_source_name
  content_type  = "application/zip"
  object_source = var.code_source
}

#Cloud Function
module "cloud_function" {
  source     = "../modules/cloud_function"
  depends_on = [module.source_code]

  cloudfunction_name    = var.cloudfunction_name
  region                = var.region
  runtime               = var.runtime
  bucket_source_name    = var.bucket_source_name
  object_source_name    = var.object_source_name
  entry_point           = var.entry_point
  ingress               = var.ingress
  bucket_trigger_name   = var.bucket_trigger_name
  service_account_email = var.service_account_email
}
