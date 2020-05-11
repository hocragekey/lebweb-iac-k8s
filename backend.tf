terraform {
  backend "remote" {
    # Terrafrom Cloud organization
    organization = "lebweb-services"

    workspaces {
      name = "lebweb-iac-k8s"
    }
  }
}
