provider "azurerm" {
  features {

  }
}

data "terraform_remote_state" "workspace_b" {
  backend = "remote"
  config = {
    organization = "Demo-DDI"
    workspaces = {
      name = "Vnetddi"
    }
  }
}

data "azuread_client_config" "current" {}

output "object_id" {
  value = data.azuread_client_config.current.object_id
}