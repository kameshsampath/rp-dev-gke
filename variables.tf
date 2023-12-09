variable "gcp_project" {
  description = "The Google Cloud Project"
}

variable "gcp_region" {
  description = "The Google Cloud Region where the cluster will be created"
  default     = "asia-south1"
}

variable "cluster_name" {
  description = "the gke cluster name"
  default     = "redpanda-dev"
}

variable "gke_num_nodes" {
  default     = 3
  description = "number of gke nodes"
}

# gcloud compute machine-types list
variable "machine_type" {
  description = "the google cloud machine types for each cluster node"
  # https://cloud.google.com/compute/docs/general-purpose-machines#e2_machine_types
  default = "e2-standard-4"
}

variable "kubernetes_version" {
  description = "the kubernetes versions of the GKE clusters"
  # kubernetes version to use, major.minor
  default = "1.24."
}

variable "release_channel" {
  description = "the GKE release channel to use"
  type        = string
  default     = "stable"
}

variable "redpanda_runner_sa" {
  description = "The Google Cloud SA that will be used with Redpanda Cluster"
  type        = string
  default     = "rp-dev-sa"
}

variable "redpanda_namespace" {
  description = "The namespace where Redpanda Operator controller and cluster will be deployed"
  type        = string
  default     = "redpanda"
}

variable "redpanda_image_repository" {
  description = "The container image repository for Redpanda images"
  type        = string
  default     = "docker.redpanda.com/redpandadata/redpanda-operator"
}

