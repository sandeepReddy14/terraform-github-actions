# Infra for hub

# virtual network for hub

resource "azurerm_virtual_network" "intact_hub_virtual_network" {
    name = var.hub_virtual_network_name
    location = var.resource_group_location
    resource_group_name = var.resource_group_name
    address_space = var.hub_address_space

    tags = {
        environment = var.environment
    }
    depends_on = [ azurerm_resource_group.intact_resource_group ]
}

# subnet in hub

resource "azurerm_subnet" "intact_hub_sub_net" {
    name = var.hub_sub_net
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.intact_hub_virtual_network.name
    address_prefixes = var.hub_subnet_address_prefixes
    depends_on = [ azurerm_virtual_network.intact_hub_virtual_network ]
}
