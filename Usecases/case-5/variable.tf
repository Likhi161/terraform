variable aws_configure {
    type = map(object({
        instance_type = string
        ami = string
    }))
    default = {
        app = {
            instance_type = "t2.micro"
            ami = "ami-07a00cf47dbbc844c"
        }
        web = {
            instance_type = "t2.micro"
            ami = "ami-07a00cf47dbbc844c"}
    }
}
variable region {
    type = string
    default = "ap-south-1"
}