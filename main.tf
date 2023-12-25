# Configure Azure Provider
terraform {
  required_providers {
     azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.59.0"
    } 
  }
  backend "azurerm" {
resource_group_name   = "terraform-ResourceGroup"
storage_account_name  = "heydevopsterraformtstate"
container_name        = "tstate"
key                   = "wCWpF8qUhx1h+Ykj/nbn3uGqvEKzZjpPsrbxp3kxdYtXOJSNxzakrVLte32KlGCuprwAPamUvZ8x+AStHvMf1A=="
}
  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}

  skip_provider_registration = "true"
}

variable "prefix" {
  default = "terraform"
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-ResourceGroup"
  location = "Central India"
}







