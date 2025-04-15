terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg"
    storage_account_name  = "tfstatestorage23885"
    container_name        = "tfstate"
    key                   = "vmss/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

provider "aws" {
  region = "us-east-1"
}