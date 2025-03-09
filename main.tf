resource "aws_security_group" "ec2_sg" {
  name        = var.security_group_name
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id  # Add this line to specify the VPC ID

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }
}


resource "aws_instance" "ec2_instance" {
  instance_type          = var.instance_type
  key_name               = var.key_name
  ami                    = var.ami
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]  # Use this instead of 'security_groups'
  subnet_id              = var.subnet_id  # Specify a subnet within the VPC

  tags = {
    Name = var.ec2_tags
  }
}

resource "aws_eip" "elastic_ip" {
  instance = aws_instance.ec2_instance.id
  domain   = "vpc"

  tags = {
    Name = var.eip_tags
  }
}
