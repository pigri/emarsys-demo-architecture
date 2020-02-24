variable "cluster_name" {
  type = string
}

variable "cluster_location" {
  type = string
}

variable "initial_node_count" {
  type = string
}

variable "remove_default_node_pool" {
  type    = string
  default = true
}

variable "istio_disabled" {
  type    = string
  default = false

}
