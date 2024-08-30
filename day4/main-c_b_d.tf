resource "aws_instance" "Name" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
   key_name = "keypair"
    tags = {
        Name = "MOHIT"
}
lifecycle {
  create_before_destroy = true #this attribute will create the new object first and then destroy the old one
}
}


#first create a instance
#after that create one more instance with other tags and key_name
#creating means jst modifying the old instance
#then give the lifecycle crete_before_destroy =true


