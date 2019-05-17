# Some services need to be installed at a cluster level
# So we have a seperate service account in the kube-system
# namespace with cluster admin role
resource "kubernetes_service_account" "clustertiller" {
  metadata {
    name = "clustertiller"
    namespace = "kube-system"
  }
}
resource "kubernetes_cluster_role_binding" "clustertiller" {
    metadata {
        name = "clustertiller-binding"
    }
    role_ref {
        api_group = "rbac.authorization.k8s.io"
        kind = "ClusterRole"
        name = "cluster-admin"
    }
    subject {
        kind = "ServiceAccount"
        name = "clustertiller"
        namespace = "kube-system"
        api_group = ""
    }
}
