
resource "azurerm_resource_group" "res_state_storage" {
  name     = "rg-terraform-demo"
  location = "UK South"
}


resource "azurerm_storage_account" "res_storage" {
  name                     = "stterraformdemo1909"
  resource_group_name      = azurerm_resource_group.res_state_storage.name
  location                 = azurerm_resource_group.res_state_storage.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
