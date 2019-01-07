resource "kubernetes_namespace" "ark" {
  metadata {
    name = "${var.kubernetes_namespace}"
  }
}

resource "kubernetes_secret" "ark_service_account" {
  "metadata" {
    namespace = "${kubernetes_namespace.ark.metadata.0.name}"
    name      = "cloud-credentials"
  }

  data {
    cloud = "${base64decode(google_service_account_key.heptio_ark_service_account_key.private_key)}"
  }
}
