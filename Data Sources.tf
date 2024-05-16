#Data Sources allow Terraform to use information defined outside of Terraform or by another configuration.

data "aws_ami" "latest"{
    most_recent= true
    owner= ["self"]

    filter{
        name= "name"
        values= ["my-ami-*"]
    }
}

#Using the data source:

resource "aws_instance" "example"{
    ami= data.aws_ami.latest.id
    instance_type= "t2.micro"
}