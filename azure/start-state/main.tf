resource "azurerm_storage_account" "tfstate_sa" {
    name                     = var.tf_storage_account_name
    resource_group_name      = azurerm_resource_group.hydra-identity-group.name
    location                 = azurerm_resource_group.hydra-identity-group.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
    account_kind             = "BlobStorage"

    tags = {
        environment = var.environment
    }
}

resource "azurerm_storage_container" "tfstate_container" {
    name                  = var.tf_container_name
    storage_account_name  = azurerm_storage_account.tfstate_sa.name
    container_access_type = "private"
}