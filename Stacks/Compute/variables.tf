variable "public_subnet_az1_id" {
    description ="id of public subnet in az1 for nat gateway"
    type = string
}

variable "instance_type"{
    description = "type of instance"
    type = string
}

variable "ami_image" {
  description = "ami image for the front-end server"
  type = string
}