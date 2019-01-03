resource "kubernetes_secret" "ark_service_account" {
    "metadata" {
        namespace = "${var.kubernetes_namespace}"
        name = "cloud-credentials"
    }

    data {
        cloud = "${base64decode(google_service_account_key.heptio_ark_service_account_key.private_key)}"
    }
}
