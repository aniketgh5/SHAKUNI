terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.44.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b35c9afa-9045-49a7-852b-e7bffe5ca332"

}