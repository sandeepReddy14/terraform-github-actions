# backend.tf contains backend configuration
terraform {
  backend "azurerm" {
    storage_account_name = "intact"
    container_name       = "dev-tfstate-container"
    resource_group_name  = "storage_resource_group"
    key                  = "dev-test-terraform.tfstate"
  }
}