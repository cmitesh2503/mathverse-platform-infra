resource "google_compute_network" "vpc"{
    name                    = var.vpc_name
    auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "subnet"{
    for_each     = var.subnets
    name         = each.value.subnet_name
    ip_cidr_range = each.value.cidr
    region       = each.value.region
    network      = google_compute_network.vpc.id
    private_ip_google_access = true
}
