resource "google_container_node_pool" "node_pools" {
  name       = var.node_pool_name
  location   = var.cluster_location
  cluster    = var.cluster_name
  node_count = var.node_count

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  management {
    auto_repair  = var.auto_repair
    auto_upgrade = var.auto_upgrade
  }

  node_config {
    preemptible  = var.preemptible
    machine_type = var.machine_type

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

  lifecycle {
    ignore_changes = [node_count]
  }

}