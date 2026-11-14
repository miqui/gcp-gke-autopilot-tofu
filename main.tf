provider "google" {
  project = var.project_id
  region  = var.region
}

module "gke_autopilot" {
  source = "./modules/gke-autopilot"

  project_id                 = var.project_id
  region                     = var.region
  cluster_name               = var.cluster_name
  master_authorized_networks = var.master_authorized_networks
  deletion_protection        = var.deletion_protection
}
