module "rg" {
    source = "../modules/terraform-azure-rg"
    rg_name = var.rg_name
    location = var.location
}

module "vnet" {
  source = "../modules/terraform-azure-vnet"
  rg_name = module.rg.rg_name
  location = module.rg.rg_location

  vnet_name = var.vnet_name
  vnet_addressspace = var.vnet_addressspace

  snet_name = var.snet_name
  snet_address = var.snet_address
}

module "vm" {
    source = "../modules/terraform-azure-vm"
 
    rg_name = module.rg.rg_name
    location = module.rg.rg_location  

    subnet_id = module.vnet.subnet_id
    
    vm_name = var.vm_name
    vm_sku = var.vm_sku
    vm_adminuser = var.vm_adminuser
    vm_adminpassword = var.vm_adminpassword
}
