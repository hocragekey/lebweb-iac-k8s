provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.9.0"
  features {
  }
}

resource "azurerm_resource_group" "spark-k8s" {
  name     = var.k8s_resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "spark-k8s" {
  name                = var.cluster_name
  location            = azurerm_resource_group.spark-k8s.location
  resource_group_name = azurerm_resource_group.spark-k8s.name
  dns_prefix          = var.dns_prefix

  linux_profile {
    admin_username = "ubuntu"

    ssh_key {
      key_data = var.ssh_public_key
    }
  }

  default_node_pool {
    name       = "default"
    node_count = var.agent_count
    vm_size    = "Standard_A2_v2"
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  kube_dashboard {
    enabled = true
  }
}

