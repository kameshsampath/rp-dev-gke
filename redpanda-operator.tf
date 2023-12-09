resource "helm_release" "cert_manager" {
  name = "cert-manager"

  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"

  create_namespace = true
  namespace        = "cert-manager"

  set {
    name  = "installCRDs"
    value = true
  }
}

resource "helm_release" "redpanda_operator" {
  name = "redpanda-controller"

  repository = "https://charts.redpanda.com"
  chart      = "operator"

  create_namespace = true
  namespace        = var.redpanda_namespace

  set {
    name  = "installCRDs"
    value = true
  }

  set {
    name  = "image.repository"
    value = var.redpanda_image_repository
  }
}
