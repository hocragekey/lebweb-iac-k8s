terraform {
  backend "remote" {
    organization = "lebweb-services"

    workspaces {
      name = "lebweb-iac-k8s"
    }
  }
}
