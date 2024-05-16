#provisoners are used to execute scripts on a local or remote machine as part of the resource creation or destruction process.

resource "aws_instance" "example"{
    ami= "ami-1234"
    instance_type= "t2.micro"

    provisioner "local-exec"{
        command= "echo ${aws_instance.example.id}"
    }
}