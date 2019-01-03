variable "project" {
  description = "GCE project name"
  default     = ""
}

variable "bucket_name" {
  description = "Name of the bucket to store backup data"
  default     = ""
}

variable "kubernetes_namespace" {
    description = "Kubernetes namespace for k8s objects"
    default = "heptio-ark"
}
