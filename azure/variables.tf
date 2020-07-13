variable "tf_state_resource_group" {
    default = "hydra-identity-dev"
}

variable "Hydra_Identity_Resource_Group" {
    default = "hydra-identity-resource-group"
}

variable "tf_storage_account_name" {
  default = "tfdevhydraidentity"
}

variable "tf_container_name" {
  default = "tfdevcontainer"
}

variable "Hydra_Identity_Azure_Region" {
  default = "East US"
}

variable "Hydra_IdentityServerSite_Name" {
    default = "hydraidentityserversite"
}

variable "Hydra_Admin" {
  default = "hydraadmin"
}

variable "AzSubscriptionId" {
  default = "<your-azure-subscription>"
}

variable "environment" {
  default = "development" 
}

