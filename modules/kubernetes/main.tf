resource "google_container_cluster" "cluster" {
  provider = google-beta
  name     = var.cluster_name
  location = var.cluster_location

  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count

  addons_config {
    istio_config {
      disabled = var.istio_disabled
    }
  }

}