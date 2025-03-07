variable "region" {
  description = "AWS region to deploy resources"
}

variable "security_group_name" {
  description = "Name of the security group"
}

variable "cidr_blocks" {
  description = "CIDR block to allow SSH access"
  type        = list(string)
}
variable "ami" {
    description = "Amazon Machine Image ID"
  
}
variable "vpc_id" {
  description = "The VPC ID where resources will be created"
}

variable "subnet_id" {
  description = "The Subnet ID where the instance will be launched"
}


variable "instance_type" {
  description = "Type of EC2 instance"
}

variable "key_name" {
  description = "Key Pair Name for SSH Access"
}


variable "ec2_tags" {
  description = "Tag for EC2 instance"
  type        = string
}

variable "domain" {
  description = "Domain of an Elastic IP"
  type        = string
}

variable "eip_tags" {
  description = "Elastic IP tag name"
  type        = string
}