resource "aws_subnet" "example" {
    count = length(var.azs)
    vpc_id = aws_vpc.main.id
    cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index)
    availability_zone = var.azs[count.index]
    tags = {
        Name = "demo-subnet"
    }
}
resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "main-vpc"
    }
}