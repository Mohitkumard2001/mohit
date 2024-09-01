 provider "aws" {
    region = "us-east-1"
 }
 resource "aws_instance" "Name" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "keypair"
    tags = {
        Name = "DMK"
    }
 }
 resource "aws_s3_bucket" "bucket" {
    bucket = "kumarrrrrrrrrrr"
 }

#If we want to create or destroy specific resource in terraform configuration file we can use target resource block examplebelow
#terraform apply --target=aws_s3_bucket.bucket
#terraform destroy --target=aws_instance.Name 