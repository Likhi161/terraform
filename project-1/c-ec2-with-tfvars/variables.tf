variable "aws_region" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_name" {
  type = string
  default = "EC2-WithDefaults"
}

variable "environment" {
  type = string
}