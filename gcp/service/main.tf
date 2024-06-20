#Storage bucket
module "bucket" {
  source = "../modules/storage"

  bucket_name = var.bucket_name
  location    = var.region
}

#Object to be stored
module "object_storage" {
  source     = "../modules/object_storage"
  depends_on = [module.bucket]

  bucket_name   = var.bucket_name
  object_name   = var.object_name
  content_type  = "text/plain"
  object_source = "/dev/null"
}
