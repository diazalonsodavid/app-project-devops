# Devops: Example of SRE tools application 

## Description
DevOps project in charge of deploying the project hosted https://github.com/diazalonsodavid/App-Project, using Github Action, Terraform, K8s, Helm, and prometheus tools for monitoring.

## Usage
### Github Action
The workflow is executed when the CI of the Github action of https://github.com/diazalonsodavid/App-Project repo is finished. It is designed to build a 3-node auto-scalable kubernetes cluster using terraform.
Once it is up, the mysql cluster is deployed through Helm and then the application is deployed through k8s.
Finally the Prometheus tool is deployed with Helm to collect data from the cluster.

## Terraform
Terraform builds a Kubernetes cluster in the DigitalOcean cloud. The 3 nodes are auto-scalable if needed.

The terraform.tfstate file is stored in a DigitalOcean Space

## K8s

K8s is responsible for deploying the application. 
It has a deployment, a secret and a service.

The deployment is in charge of deploying the application.
The secret is used in this case so that the deployment can connect to the container registry and can pull the image compiled in the CI.
The service in this case is in charge of establishing the connection between the application and the outside.

## Helm

Helm is used to display the database to be used by the application. It already existed in the Helm repo.
The desired values will be passed to it with the file values.yaml.

Helm is also used to deploy Prometheus for cluster monitoring. As with MySQL, the values.yaml file will be used to configure the deployment.