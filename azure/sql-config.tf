# resource "azurerm_sql_virtual_network_rule" "sqlvnetrule" {
#   name                    = "sql-vnet-rule"
#   resource_group_name     = azurerm_resource_group.identity-server-group.name
#   server_name             = var.hydra_identity_servername
#   subnet_id               = azurerm_subnet.dbsub.id
# }

# resource "azurerm_subnet" "dbsub" {
#   name                      = "dbsubn"
#   resource_group_name       = azurerm_resource_group.identity-server-group.name
#   virtual_network_name      = "hydra-identity-db-virtual"
#   address_prefix            = "10.0.2.0/24"
#   service_endpoints         = ["Microsoft.Sql"]
# }
