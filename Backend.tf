#The backend defines where Terraform's state file is stored. Common backend include local, S3, and remote backends like Terraform Cloud.

terrafor{
    backend "s3"{
        bucket= "my-terraform-state"
        key= "path/to/key"
        region= "us-west-2"
    }
}