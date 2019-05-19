output "kubeconfig" {
    value = "${azurerm_kubernetes_cluster.keda.kube_config}"
}

output "acr_server" {
    value = "${azurerm_container_registry.keda.login_server}"
}

output "acr_password" {
    value = "${azurerm_container_registry.keda.admin_password}"
}

output "acr_user" {
    value = "${azurerm_container_registry.keda.admin_username}"
}

