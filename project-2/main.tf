terraform {
  required_providers {
    aws = {
        source = "registry.terraform.io/hashicorp/aws"
        version = "6.44.0"
    }
  }
}
provider "aws" {
    region = var.aws_region
  
}
resource "aws_vpc" "demo-vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
      Name = "demo-vpc"
  }
  
}
resource "aws_subnet" "my_subnet" {
  vpc_id = aws_vpc.demo-vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
  tags = {
      Name = "my-subnet"
  }
  
}
resource "aws_subnet" "pub_subnet" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = var.subnet_cidr_b
    availability_zone = var.availability_zone_b
    tags = {
        Name = "public-subnet"
    }
  
}
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.demo-vpc.id
  tags = {
      Name = "my-igw"
  }
  
}
resource "aws_security_group" "my-sg" {
  name = "my-sg"
  description = "security group for demo"
  vpc_id = aws_vpc.demo-vpc.id
  tags = {
     Name = "demo-sg"
  }
  
}
resource "aws_security_group_rule" "rule1" {
    type = "ingress"
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = [var.allowed_http]
    security_group_id = aws_security_group.my-sg.id
}
resource "aws_security_group_rule" "rule2" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.my-sg.id
}