variable "node_pool_name" {
  type = string
}

variable "cluster_location" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "node_count" {
  type = string
}

variable "preemptible" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "auto_repair" {
  type    = string
  default = true
}

variable "auto_upgrade" {
  type    = string
  default = true
}

variable "min_node_count" {
  type = string
}

variable "max_node_count" {
  type = string
}

