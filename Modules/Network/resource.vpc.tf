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

resource "aws_route_table" "public_route"{
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "public route table"
  }
}
