resource "helm_release" "keda" {

    name      = "keda"
    chart     = "kedacore/keda-edge"

    namespace = "default"

    devel = "true"

    set {
        name = "logLevel"
        value = "debug"
    }

}

resource "helm_release" "osiris" {

    name      = "osiris"
    chart     = "osiris/osiris-edge"

    namespace = "default"

    devel = "true"
}