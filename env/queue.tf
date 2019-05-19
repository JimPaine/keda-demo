resource "azurerm_storage_account" "keda" {
  name                     = "kedafunc"
  resource_group_name      = "${azurerm_resource_group.keda.name}"
  location                 = "${azurerm_resource_group.keda.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_queue" "keda" {
  name                 = "kedaqueue"
  resource_group_name  = "${azurerm_resource_group.keda.name}"
  storage_account_name = "${azurerm_storage_account.keda.name}"
}