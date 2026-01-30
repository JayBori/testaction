resource "azurerm_storage_container" "example" {
  name                  = var.blob_container_name
  storage_account_id    = var.storage_account_name
  container_access_type = "private"
}
