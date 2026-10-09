terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  # COMMENT OUT AND CREATE STORAGE ACCOUNT IN L000 AND THEN UNCOMMENT
  backend "azurerm" {
    resource_group_name  = "rg-state-storage"
    storage_account_name = "stterraformdemo1909"
    container_name       = "tfstate"
    key                  = "L100/terraform.tfstate"
    use_azuread_auth = true
    use_cli          = true
  }
}

provider "azurerm" {
  features {}
}
