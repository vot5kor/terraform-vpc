variable "project_name"{

}

variable "environment"{

}

variable "vpc_cidr"{

}

variable "enable_dns_hostnames"{
    default = true
}

# Mandatory
variable "common_tags"{
    type = map
}

variable "vpc_tags" {
   
}

variable "igw_tags"{
    default = {}
}

variable "public_subnet_cidr"{
    validation {
        condition     = length(var.public_subnet_cidr) == 2
        error_message = "please provide atleast 2 valid sunet cidrs."
     }
}

variable "private_subnet_cidr"{
    validation {
        condition     = length(var.private_subnet_cidr) == 2
        error_message = "please provide atleast 2 valid sunet cidrs."
     }
}


variable "database_subnet_cidr"{
    validation {
        condition     = length(var.database_subnet_cidr) == 2
        error_message = "please provide atleast 2 valid databas subnet cidrs."
     }
}

variable "is_peering_required" {
    default = false
}
