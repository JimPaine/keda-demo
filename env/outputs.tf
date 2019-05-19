output "acr_server" {
    value = "${azurerm_container_registry.keda.login_server}"
}

output "acr_password" {
    value = "${azurerm_container_registry.keda.admin_password}"
}

output "acr_user" {
    value = "${azurerm_container_registry.keda.admin_username}"
}

output "resource_group" {
    value = "${azurerm_resource_group.keda.name}"
}

output "cluster_name" {
    value = "${azurerm_kubernetes_cluster.keda.name}"
}