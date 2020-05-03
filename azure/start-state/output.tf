output "storage_account_name" {
    value = azurerm_storage_account.tfstate_sa.name
}

output "container_name" {
    value = azurerm_storage_container.tfstate_container.name
}

output "access_key" {
    value = azurerm_storage_account.tfstate_sa.primary_access_key
}