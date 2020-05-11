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
  default = "k8s.lebwebservices"
}

variable "cluster_name" {
  default = "lebweb-k8s"
}

variable "k8s_resource_group_name" {
  default = "lebweb-k8s-rg"
}

variable "location" {
  default = "East US"
}

variable "vm_size" {
  default = "Standard_A2_v2"
}

