provider "aws"{
    region  = var.region
    profile = "Isabelle+SolutionArch"
}

module "vpc" {
  source = "../../Modules/Network" 
  region = var.region
  project_name = var.project_name
  vpc_cidr = var.vpc_cidr
  public_subnet_az1_cidr       = var.public_subnet_az1_cidr
  public_subnet_az2_cidr       = var.public_subnet_az2_cidr
  public_subnet_az3_cidr       = var.public_subnet_az3_cidr
  private_app_subnet_az1_cidr  = var.private_app_subnet_az1_cidr 
  private_app_subnet_az2_cidr  = var.private_app_subnet_az2_cidr
  private_app_subnet_az3_cidr  = var.private_app_subnet_az3_cidr
  private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr
  private_data_subnet_az3_cidr = var.private_data_subnet_az3_cidr
  public_subnet_az1_id         = var.public_subnet_az1_id
  public_subnet_az2_id         = var.public_subnet_az2_id
  public_subnet_az3_id         = var.public_subnet_az3_id
  private_app_subnet_az1_id    = var.private_app_subnet_az1_id
  private_data_subnet_az1_id   = var.private_app_subnet_az1_id
  private_data_subnet_az2_id   = var.private_data_subnet_az2_id
  private_app_subnet_az2_id    = var.private_app_subnet_az2_id
  internet_gateway             = var.internet_gateway 
  vpc_id = var.vpc_id
  S3_bucket = var.S3_bucket
  ami_image = var.ami_image
  instance_type = var.instance_type
}

module "security_group"{
source = "./../Modules/Network"
vpc_id = aws_vpc.vpc_id
}

module "nat_gateway"{
  source = "./../Modules/Network"
  
}

module "S3_bucket" {
  source = "./../Modules/Network"
  vpc_id = aws_vpc.vpc_id
}


module "ec2_instance" {
  source = "./../Modules/Network"
}

 