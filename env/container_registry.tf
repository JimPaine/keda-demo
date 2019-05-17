resource "azurerm_container_registry" "keda" {
  name                = "${random_id.keda.dec}registry"
  resource_group_name = "${azurerm_resource_group.keda.name}"
  location            = "${azurerm_resource_group.keda.location}"
  admin_enabled       = true
  sku                 = "Premium"
}
