variable "cluster_name" {
    description = "Name of the GKE cluster"
    type        = string
}

variable "location" {
    description = "zone(for zonal cluster)"
    type        = string
}

variable "network" {
    description = "VPC network id for the cluster"
    type        = string
}

variable "subnetwork" {
    description = "VPC subnetwork id for the cluster"
    type        = string
}

variable "node_pools"{
    description = "node pools configuration for the cluster"
    type        = map(object({
        machine_type = string
        node_count   = number
    }))

}