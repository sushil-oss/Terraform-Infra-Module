terraform {

  backend "azurerm" {
  resource_group_name  = "rgsudhisl"
  storage_account_name = "sushstg"
  container_name       = "sushcont"
  key                  = "non-prod.terraform.tfstate"
}


  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "xxxx"
}


