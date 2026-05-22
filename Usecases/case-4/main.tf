provider "aws" {
    region = var.region
}
resource "aws_instance" "example" {
    ami = var.aws_configure[0]
    instance_type = var.aws_configure[1]
    monitoring = var.aws_configure[2]
}