terraform {
  backend "remote" {
    # Terrafrom Cloud organization
    organization = "lebweb-services"

    workspaces {
      name = "lebweb-iac-k8s"
    }
  }
}

# Dummy resource for now
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
