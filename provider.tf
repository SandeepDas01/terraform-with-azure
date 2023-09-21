terraform {
  required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   features {}
  subscription_id = "d3d9fed5-1ea1-4e7a-b36f-0834e7d0474a"

}
