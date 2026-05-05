variable "vpc_name"{
    description = "Name of the vpc"
    type        =  string
}

variable "subnets"{
    description = "map of subnets to create in the vpc"
    type        = map(object({
        subnet_name       = string
        cidr              = string
        region            = string
    }))
}

variable "region" {
    description = "Region"
    type        = string
}