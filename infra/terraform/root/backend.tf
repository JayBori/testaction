terraform {
  backend "azurerm" {
    resource_group_name  = "sgjo-test-backend-rg"
    storage_account_name = "testsgjosm0qql"
    container_name       = "tfstate"
    key                  = "infra.tfstate"
  }
}
