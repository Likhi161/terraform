provider "aws" {
    region = var.region
  
}
resource "aws_instance" "configure" {
    for_each = var.aws_configure
    ami = each.value.ami
    instance_type = each.value.instance_type
    tags = {
        Name = each.key
    }
}