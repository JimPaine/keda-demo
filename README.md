# KEDA Demo

The purpose of this demo is to help people get started using KEDA in a wolrd of "Everything as Code" as quickly as possible. It currently includes the following:

- Terraform to spin up:
  - AKS with CNI
  - Kubernetes, secrets, namespaces and service accounts
  - Helm and Tiller
  - KEDA
  - Osiris
  - Azure Storage Queue
  - Azure Container Registry (ACR)
- Azure Pipeline to:
    - Execute Terraform
    - Download the Azure Functions cli
    - initialise Docker
    - Docker build and push to ACR created by Terraform
    - Generate k8s deployment with pointer to secrets created by Terraform
    - Run kubectl apply

![pipeline](/docs/images/pipeline.png)

## Pipeline Status

| Stage | Job | Status |
| ----- | --- | ------ |
| Environment | Provision | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=ProvisionEnvironment)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |
| Build | HttpFunction | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=BuildAndPush&jobName=http)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |
| Build | QueueFunction | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=BuildAndPush&jobName=queue)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |
| Deploy | HttpFunction | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=Deploy&jobName=http)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |
| Deploy | QueueFunction | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=Deploy&jobName=queue)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |

## Get up and running

Start by forking this repository, we will then setup Terraform with a Service Principal and a remote storage account, so we can automate the provisioning of the environment.

### Steps

- [1. Terraform Service Principal](/docs/TerraformSP.md)
- [2. Terraform State](/docs/TerraformState.md)
- [3. Azure DevOps Pipelines](/docs/AzurePipeline.md)