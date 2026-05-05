module "vpc" {
source = "../../modules/vpc"

vpc_name = "mathverse-vpc-dev"

subnets = {
    "subnet1" = {
        subnet_name = "mathverse-subnet-dev-1"
        cidr        = "10.0.1.0/24"
        region      = var.region
}
    "subnet2" = {
        subnet_name = "mathverse-subnet-dev-2"
        cidr        = "10.0.2.0/24"
        region      = var.region
    }
}
region = var.region
}

module "gke" {
 source = "../../modules/gke"

 cluster_name = "mathverse-gke-dev"
 location     = "asia-south1-a"
 network      = module.vpc.vpc_id
 subnetwork   = module.vpc.subnet_ids["subnet1"]

 node_pools   = {
     default = {
        machine_type = "e2-medium"
        node_count   = 1
    }
 }
}

module "artifact_registry" {
 source = "../../modules/artifact-registry"

 repository_id = "mathverse-repo"
 location      = var.region
 description   = "Docker repo for Mathverse"
 project_id    = var.project_id
}
