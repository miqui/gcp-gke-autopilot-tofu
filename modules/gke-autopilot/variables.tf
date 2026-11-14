variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "cluster_name" {
  type    = string
  default = "gke-autopilot"
}

variable "master_authorized_networks" {
  description = "Allowed CIDRs for the public endpoint. Must be set to reach the API."
  type = list(object({
    cidr_block   = string
    display_name = string
  }))
  default = []
}

variable "deletion_protection" {
  type    = bool
  default = true
}

variable "subnet_cidr" {
  type    = string
  default = "10.10.0.0/20"
}

variable "pods_cidr" {
  type    = string
  default = "10.20.0.0/16"
}

variable "services_cidr" {
  type    = string
  default = "10.30.0.0/20"
}

variable "master_ipv4_cidr_block" {
  type    = string
  default = "172.16.0.0/28"
}
