# keda-demo
A demo that spins up AKS, deploys KEDA, Osiris and adds some functions into the mix!

| Stage | Job | Status |
| ----- | --- | ------ |
| Environment | Provision | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=ProvisionEnvironment)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |
| Build | HttpFunction | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=BuildAndPush&jobName=HttpFunction)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |
| Build | QueueFunction | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=BuildAndPush&jobName=QueueFunction)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |
| Deploy | HttpFunction | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=Deploy&jobName=HttpFunction)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |
| Deploy | QueueFunction | [![Build Status](https://dev.azure.com/jimpaine-msft/github%20pipelines/_apis/build/status/JimPaine.keda-demo?branchName=master&stageName=Deploy&jobName=QueueFunction)](https://dev.azure.com/jimpaine-msft/github%20pipelines/_build/latest?definitionId=44&branchName=master) |