variable "project_id" {
  description = "GCP project ID. Supply via TF_VAR_project_id."
  type        = string
}

variable "region" {
  description = "Region for the regional (multi-zone) cluster. Supply via TF_VAR_region."
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Cluster name. Supply via TF_VAR_cluster_name."
  type        = string
  default     = "gke-autopilot"
}

variable "master_authorized_networks" {
  description = "CIDRs allowed to reach the public control-plane endpoint. Empty by default = nobody; set it to reach the API."
  type = list(object({
    cidr_block   = string
    display_name = string
  }))
  default = []
}

variable "deletion_protection" {
  description = "Protect the cluster from accidental deletion."
  type        = bool
  default     = true
}
