terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}
provider "azurerm" {
  features {}
}

variable "rgs_CICD" {

}
resource "azurerm_resource_group" "rgs" {
  for_each = var.rgs_CICD
  name     = "each.value.name"
  location = "each.value.loaction"

}