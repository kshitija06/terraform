# Resources describes one or more infrastructure objects.

resource "aws_instance" "example"{
    ami= "ami-1234"
    instance_type= "t2.micro"
}