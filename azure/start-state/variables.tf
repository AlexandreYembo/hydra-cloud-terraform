variable "AZ_REGION" {
    default="East US"
}

variable "Resource_Group" {
    default = "hydra-identity-dev"
}

variable "environment" {
  default = "development"
}

variable "tf_storage_account_name" {
  default = "tfdevhydraidentity"
}

variable "tf_container_name" {
  default = "tfdevcontainer"
}