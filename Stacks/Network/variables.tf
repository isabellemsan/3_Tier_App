variable "region" {
    description = "in which region the resources are deployed"
    type = string
}
variable "project_name"{
    description = "the project name chosen"
    type = string
}
variable "vpc_cidr"{
    description ="cidr block of the vpc"
    type = string
}
variable "public_subnet_az1_cidr"{
    description ="public subnet for first AZ"
    type = string
}
variable "public_subnet_az2_cidr"{

    description ="public subnet for second AZ"
    type =string
    }
    
variable "public_subnet_az3_cidr"{
    description = "public subnet for third AZ"
    type = string
    }

variable "private_app_subnet_az1_cidr"{
    description ="private subnet app resources in cidr AZ 1"
    type = string
}
variable "private_app_subnet_az2_cidr"{
    description ="private subnet for app resources in cidr AZ 2"
    type = string
}
variable "private_app_subnet_az3_cidr"{
     description ="private subnet for app resources in cidr AZ 3 "
    type = string
}
variable "private_data_subnet_az1_cidr"{
    description = "private subnet for data resources in AZ 1"
    type = string
}
variable "private_data_subnet_az2_cidr"{
    description = "private subnet for data resources in AZ 2"
    type = string
}
variable "private_data_subnet_az3_cidr"{
    description = "private subnet for data resources in AZ 3"
    type = string
    }