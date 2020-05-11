variable "client_id" {
}

variable "client_secret" {
}

variable "ssh_public_key" {
}

variable "agent_count" {
  default = 3
}

variable "dns_prefix" {
  default = "k8sexample"
}

variable "cluster_name" {
  default = "k8sexample"
}

variable "k8s_resource_group_name" {
  default = "lebweb-k8sexample"
}

variable "location" {
  default = "East US"
}

