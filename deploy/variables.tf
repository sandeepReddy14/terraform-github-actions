# variables.tf

variable "environment" {
  description = "The environment type for deployment (dev,qa,prod)"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region for the resource group"
  type        = string
  default     = "East US"
}


# variables for hub infra
variable "hub_virtual_network_name" {
  description = "The name of virtual network for Hub"
  type = string
  default = "hub_virtual_network"
}

variable "hub_address_space" {
  description = "The address space for Hub Virtual Network"
  type = list(string)
}

variable "hub_sub_net" {
  description = "The name of subnet in hub virtual network"
  type = string
  default = "hub_sub_net"
}

variable "hub_subnet_address_prefixes" {
  description = "The address prefixes for subnet in Hub Virtual Network"
  type = list(string)
}
