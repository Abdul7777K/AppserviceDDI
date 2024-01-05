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
