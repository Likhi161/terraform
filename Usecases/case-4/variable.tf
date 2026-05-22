variable aws_configure {
    type = tuple([ string, string, bool,])
    default = ["ami-07a00cf47dbbc844c", "t2.micro", true]
}
variable region {
    type = string
    default = "ap-south-1"
}