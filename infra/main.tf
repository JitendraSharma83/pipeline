terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f5c092a3-a10b-4952-9791-a66c5de6792b"
}

hi new add

resource "azurerm_resource_group" "rg" {
  name     = "rg-testpipe"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-testpipe1"
  location = "West Europe"
}

resource "azurerm_storage_account" "sg" {
  name                     = "pipestorage"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

