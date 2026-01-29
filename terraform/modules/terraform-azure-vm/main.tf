resource "azurerm_network_interface" "vm-nic" {
    name = "${var.vm_name}-nic"
    location = var.location
    resource_group_name = var.rg_name

    ip_configuration { 
        name = "internal"
        subnet_id = var.subnet_id
        private_ip_address_allocation = "Dynamic"
    }
  
}

resource "azurerm_linux_virtual_machine" "vm" {
    name = var.vm_name
    resource_group_name = var.rg_name
    location = var.location
    size = var.vm_sku
    admin_username = var.vm_adminuser
    admin_password = var.vm_adminpassword
    network_interface_ids = [
        azurerm_network_interface.vm-nic.id,
    ]

    os_disk {
        caching = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = "canonical"
        offer = "ubuntu-24_04-lts"
        sku = "server"
        version = "latest"
    }
    disable_password_authentication = false
}
