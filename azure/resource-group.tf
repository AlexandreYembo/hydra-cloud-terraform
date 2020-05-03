resource "azurerm_resource_group" "identity-server-group" {
    name           = var.Hydra_Identity_Resource_Group
    location       = var.Hydra_Identity_Azure_Region
}
