terraform {
    backend "gcs" {
        bucket  = "mathverse-terraform-state_1"
        prefix  = "dev"
    }
}