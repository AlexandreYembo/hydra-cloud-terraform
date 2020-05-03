output "db_connection_name" {
  value = azurerm_sql_server.hydra-identity-database.name
}

output "db_user_login" {
  value = azurerm_sql_server.hydra-identity-database.administrator_login
}

output "db_password" {
  value = azurerm_sql_server.hydra-identity-database.administrator_login_password
}