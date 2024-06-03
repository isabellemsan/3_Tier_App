resource "aws_vpc" "vpc" {
  cidr_block  = var.vpc_cidr
 

  tags      = {
    Name    = "${var.project_name}-vpc"
  }
}


resource "aws_internet_gateway" "internet_gateway" {
  vpc_id    = aws_vpc.vpc.id

  tags      = {
    Name    = "${var.project_name}-igw"
  }
}

