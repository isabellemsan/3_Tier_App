resource "aws_instance" "front_end_server" {
  ami = var.ami_image
  instance_type = var.instance_type
  subnet_id  = var.public_subnet_az1_id
  vpc_security_group_ids = [aws_security_group.front-end_sg.id]

  
    tags = {
      Name = locals.instance_tags 
      }
}