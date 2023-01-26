resource "digitalocean_kubernetes_cluster" "bootcamp-project" {
  name    = "bootcamp-project"
  region  = "fra1"
  version = "1.25.4-do.0"
  ha = true # Provides a high availability (HA) option that provides 99.5% SLA uptime creating multiple backup replicas of each control plane component.


  node_pool {
    name       = "autoscale-worker-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
  }
}