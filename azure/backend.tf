terraform {
    required_version = ">= 0.12"
    backend "azurerm" {
        resource_group_name  = "hydra-identity-dev"
        storage_account_name = "tfdevhydraidentity"
        container_name       = "tfdevcontainer"
        key                  = "terraform.tfstate"
    }
}