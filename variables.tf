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
   default = {}
}

variable "igw_tags"{
    default = {}
}

variable "public_subnet_cidr"{
    type = list
    validation {
        condition     = length(var.public_subnet_cidr) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
     }
}

variable "private_subnet_cidr"{
    type = list
    validation {
        condition     = length(var.private_subnet_cidr) == 2
        error_message = "Please provide 2 valid private subnet CIDR"
     }
}


variable "database_subnet_cidr"{
    type = list
    validation {
        condition     = length(var.database_subnet_cidr) == 2
        error_message = "Please provide 2 valid database subnet CIDR"
     }
}

variable "is_peering_required" {
    default = false
}
