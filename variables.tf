variable "region" {
  description = "AWS region to deploy resources"
  default = "us-east-1"
}

variable "security_group_name" {
  description = "Name of the security group"
  default = "ec2_security_group"
}

variable "cidr_blocks" {
  description = "CIDR block to allow SSH access"
  type        = list(string)
  default = ["0.0.0.0/0"]
}
variable "ami" {
    description = "Amazon Machine Image ID"
    default = "ami-08b5b3a93ed654d19"
  
}
variable "vpc_id" {
  description = "The VPC ID where resources will be created"
  default = "vpc-03acbcafef5e41f43"
}

variable "subnet_id" {
  description = "The Subnet ID where the instance will be launched"
  default = "subnet-06a4bc10e8f7f6540"
}


variable "instance_type" {
  description = "Type of EC2 instance"
  default = "t2.micro"
}

variable "key_name" {
  description = "Key Pair Name for SSH Access"
  default = "my-key"
}


variable "ec2_tags" {
  description = "Tag for EC2 instance"
  type        = string
  default = "Terraform-EC2"
}

variable "domain" {
  description = "Domain of an Elastic IP"
  type        = string
  default     ="example.com"
}

variable "eip_tags" {
  description = "Elastic IP tag name"
  type        = string
  default = "Terraform-EIP"
}
