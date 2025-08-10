terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
   backend "azurerm" {
    resource_group_name              = "amit-test-rg"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name             = "amitstg"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name                   = "terraform-container"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                              = "terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    subscription_id = "b02b567a-e4cb-4c73-975e-4664c82c8fc3"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b02b567a-e4cb-4c73-975e-4664c82c8fc3"
}
resource "azurerm_resource_group" "rg" {
  name     = "abhishek-rg"
  location = "East US"
}
