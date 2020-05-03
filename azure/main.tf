resource "azurerm_sql_server" "hydra-identity-database" {
  name                         = var.hydra_identity_database
  resource_group_name          = azurerm_resource_group.identity-server-group.name
  location                     = azurerm_resource_group.identity-server-group.location
  version                      = "12.0"
  administrator_login          = var.hydra_identity_database_user         #takes from variables-db.tf
  administrator_login_password = var.hydra_identity_database_password     #takes from variables-db.tf

  tags = {
    environment = var.environment
  }
}


# resource "azurerm_storage_account" "identity_server_site" {
#   account_replication_type       = "GRS"
#   account_tier                   = "Standard"
#   account_kind                   = "StorageV2"
#   location                       = azurerm_resource_group.identity-server-group.location
#   name                           = var.Hydra_IdentityServerSite_Name
#   resource_group_name            = azurerm_resource_group.identity-server-group.name
#   enable_https_traffic_only      = true
#   app_settings = {
#         "SQL_CONNECTION": 
#         "configurationContext":{
#         "dbprovider": "SQL_SERVER",
#         "dbConnection": "Data Source=${SQL_SOURCE};database=Hydra.IdentityServer.Configuration; User Id=${SQL_USER};Password=${SQL_PASSWORD};",
#         "seedDb": true,
#         "runMigration": false
#         } 
#   }
#   site_config {
#     cors {
#       allowed_origins     = ["*"]
#       support_credentials = false
#     }
#   }
#   static_website {
#     index_document      = "index.html"
#     error_404_document  = "error.html"
#   }
# }
