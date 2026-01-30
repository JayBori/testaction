resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_addressspace
  location            = var.location
  resource_group_name = var.rg_name
}

resource "azurerm_subnet" "snet" {
  name                 = var.snet_name
  resource_group_name = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.snet_address
}
