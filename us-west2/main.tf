provider "google-beta" {
  credentials = file("account.json")
  project     = var.project
  region      = var.region
}

provider "google" {
  credentials = file("account.json")
  project     = var.project
  region      = var.region
}

module "kubernetes" {
  source                   = "./modules/kubernetes"
  cluster_name             = var.cluster_name
  cluster_location         = var.region
  remove_default_node_pool = true
  initial_node_count       = 2
}

module "node_bool" {
  source           = "./modules/nodes"
  node_pool_name   = "node-pool-${var.region}"
  cluster_location = var.region
  cluster_name     = module.kubernetes.name
  node_count       = 2
  min_node_count   = 1
  max_node_count   = 3
  preemptible      = true
  machine_type     = "g1-small"
}
