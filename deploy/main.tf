provider "azurerm" {
  features {}
}

provider "databricks" {
  azure_workspace_resource_id = azurerm_databricks_workspace.intact_databricks_workspace.id
}

resource "azurerm_resource_group" "intact_resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}