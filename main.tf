terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.57.0"
    }
  }
}

provider "azurerm" {
   features{}
}

module "cluster" {
  source                = "./modules/cluster"
  location              = var.location
  kubernetes_version    = var.kubernetes_version  
  
}

