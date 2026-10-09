# L200/data.tf

data "terraform_remote_state" "L100" {
  backend = "azurerm"

  config = {
    storage_account_name = "stterraformdemo1909"
    container_name       = "tfstate"
    key                  = "L100/terraform.tfstate"
    use_azuread_auth      = true
    use_cli              = true
  }
}
