terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.43.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "Strong_12345"
    storage_account_name = "apptestsujit"           # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstatefile"            # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.

  }
}

provider "azurerm" {

  features {}
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

}

