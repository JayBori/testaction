module "rg" {
    source = "./modules/terraform-azure-rg"
    rg_name = var.rg_name
    location = var.location
}

module "storage" {
  source = "./modules/terraform-azure-storage"
  
  rg_name = module.rg.rg_name
  location = module.rg.rg_location

  storage_name = var.storage_name
}

module "blob" {
  source = "./modules/terraform-azure-blob"

  storage_account_id = module.storage.storage_id
  blob_container_name = var.blob_container_name
}