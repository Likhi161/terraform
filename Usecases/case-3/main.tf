provider "aws" {
  region = var.region
}
resource "aws_instance" "example" {
    ami = var.ami_id[var.region]
    instance_type = var.instance_type
    tags = {
        Name = "demo-instance"
    }
}