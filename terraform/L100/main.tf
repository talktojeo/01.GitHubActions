
resource "azurerm_resource_group" "res_baseconfig" {
  name = var.resource_group_name
  location = var.location
}
