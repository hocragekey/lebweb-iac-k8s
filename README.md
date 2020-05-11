# lebweb-iac-k8s

Repo that houses a base k8s deployment on Microsoft Azure public cloud via Terraform and AKS. The CI/CD pieces here are handled via Github Actions and the state is stored on Terraform Cloud.

## Terraform Variables

agent_count - Number of worker nodes in the k8s cluster _default value: 3_

dns_prefix - DNS prefix configured in the k8s cluster _default value: k8s.lebwebservices_

cluster_name - Name of the created k8s cluster _default value: lebweb-k8s_

resource_group - Name of the resource group where the infrastructure will be created on Azure _default value: lebweb-k8s-rg_

location - Azure Region _default value: East US_

vm_size - The VM type / size of the worker nodes _default value: Standard_A2_v2_
