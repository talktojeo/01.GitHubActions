resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.vnet_address_space]
  resource_group_name = data.terraform_remote_state.L100.outputs.resource_group_name
  location            = data.terraform_remote_state.L100.outputs.resource_group_location
}
