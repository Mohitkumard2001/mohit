resource "aws_instance" "import" {         #we should give ami,instance_type, key_name after importing the other instance using the below command in terminal
     ami="ami-066784287e358dad1"
     instance_type="t3.micro"
     key_name="keypair"     
}
#                "what we need s3bucket, instance, etc"     
#terraform import aws_instance.import instance-id                   command
#                              "Name"


#without provider the instance is created because in aws configure region is been given