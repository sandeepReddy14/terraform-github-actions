#This file contains constraints about terraform and providers used in the project.

terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 1.0"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}