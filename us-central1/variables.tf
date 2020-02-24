variable "cluster_name" {
  type    = string
  default = "cluster-us-central1"
}

variable "project" {
  type    = string
  default = "ambient-sum-269212"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.6.0.0/16"
}
variable "vpc_secondary_cidr_block" {
  type    = string
  default = "10.7.0.0/16"
}