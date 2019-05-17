resource "azurerm_virtual_network" "keda" {
  name                = "${var.resource_name}-aks-network"
  location            = "${azurerm_resource_group.keda.location}"
  resource_group_name = "${azurerm_resource_group.keda.name}"
  address_space       = ["10.2.0.0/16"]
}

resource "azurerm_subnet" "keda" {
  name                 = "aks"
  resource_group_name  = "${azurerm_resource_group.keda.name}"
  address_prefix       = "10.2.1.0/24"
  virtual_network_name = "${azurerm_virtual_network.keda.name}"
}