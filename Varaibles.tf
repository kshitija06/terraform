#Variables allow you to define values that can be reused throughout your configuration and can be set via the command line, environment variables, or terraform.tfvars files.

variable "instance_type"{
    description= "Type of the instance"
    typr= string
    default= "t2.micro"
}

#Using the Variable:

resource "aws_instance""example"{
    ami= "ami-1234"
    instance_type= var.instance_type
}