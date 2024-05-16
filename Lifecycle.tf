#Lifecycle rules provide way to customize resource management, such as preventing destruction or creating dependencies.

resource "aws_instance" "example"{
    ami= "ami-1234"
    instance_type= "t2.micro"

    lifecycle{
        prevent_destroy= true
    }
}