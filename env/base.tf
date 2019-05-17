resource "azurerm_resource_group" "keda" {
  name     = "${var.resource_name}"
  location = "westeurope"
}

resource "random_id" "keda" {
  keepers = {
    # Generate a new ID only when a new resource group is defined
    resource_group = "${azurerm_resource_group.keda.name}"
  }

  byte_length = 2
}
data "azurerm_client_config" "keda" {}