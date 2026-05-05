resource "google_container_cluster" "gke" {
  name               = var.cluster_name
  location           = var.location
  
  network    = var.network
  subnetwork = var.subnetwork

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "nodes" {
  for_each = var.node_pools

  name       = each.key
  cluster    = google_container_cluster.gke.name
  location   = var.location

  node_config {
    machine_type = each.value.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  node_count = each.value.node_count
}