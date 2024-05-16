#Modules are containers for multiple resources that are used together. A module is defined by directory conatining .tf files.

module "vpc"{
    source= "./module/vpc"

    vpc_name= "my-vpc"
    cidr_block= "10.0.0.0/16"
}

#Module Directory (modules/vpc/main.tf):

resource "aws_vpc" "main"{
    cidr_block= var.cidr_block
    tags= {
        Name= var.vpc_name
    }
}

#Module Variables (module/vpc/variables.tf):

variable "vpc_name"{
    description= "Name of the vpc"
    type= string
}
variable "cidr_block"{
    description= "CIDR block for the VPC"
    type= string
}