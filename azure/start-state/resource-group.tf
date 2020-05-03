resource "azurerm_resource_group" "hydra-identity-group" {
    name                = var.Resource_Group
    location            = var.AZ_REGION

    tags = {
        environment = "development"
    }
}