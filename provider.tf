terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ForTerraformPractice"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "tfpractice"            # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "sv1tfpractice"         # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "sv1.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
}

  