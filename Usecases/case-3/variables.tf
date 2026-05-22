variable region {
    type = string
    default = "ap-south-1"
}
variable ami_id {
    type = map(string)
    default = {
        "ap-south-1" = "ami-07a00cf47dbbc844c"
        "us-east-1" = "ami-091138d0f0d41ff90"
    }
}
variable instance_type {
    type = string
    default = "t2.micro"
}