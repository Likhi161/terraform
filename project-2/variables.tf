variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "subnet_cidr_b" {
  type    = string
  default = "10.0.2.0/24"
}
variable "availability_zone_b" {
  type    = string
  default = "ap-south-1b"
}
variable "availability_zone" {
  type    = string
  default = "ap-south-1a"
}

variable "environment" {
  type    = string
  default = "production"
}
variable "allowed_http" {
    type = string
    default = "0.0.0.0/0"
  
}