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


variable "public_subnet_az1_cidr"{
    description = "public subnet for 1st AZ cidr"
    type = string
}
variable  "public_subnet_az2_cidr"{
    description ="public subnet for 2nd AZ cidr"
    type = string
}
variable  "public_subnet_az3_cidr"{
    description ="public subnet for 3rd AZ cidr"
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

 variable "internet_gateway" {
    description ="internet gateway"
    type = string
}

   variable "vpc_id" {
    description = "the vpc id"
    type = string
   }

   variable "public_subnet_az2_id" {
    description ="id of public subnet in az2 for nat gateway"
    type = string
}

variable "private_app_subnet_az1_id" {
  description = "id for private app subnet for nat gateway"
  type = string
  
}

 variable "private_data_subnet_az1_id" {
    description ="subnet for data layer in az1 for nat gateway"
    type = string
 }

 variable "private_data_subnet_az2_id"{
    description ="subnet for data layer in az2 for nat gateway"
    type = string
 }

 variable "private_app_subnet_az2_id"{
     description ="subnet for app layer in az2 for nat gateway"
    type = string
 }


variable "public_subnet_az1_id" {
    description ="id of public subnet in az1 for nat gateway"
    type = string
} 

variable "S3_bucket" {
    description = "name of the S3 bucket"
    type = string
}
 
 variable "public_subnet_az3_id"{
    description = "subnet public for az3"
 }

 variable "instance_type"{
    description = "type of instance"
    type = string
}

variable "ami_image" {
  description = "ami image for the front-end server"
  type = string
}