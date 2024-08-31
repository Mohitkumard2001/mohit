resource "aws_instance" "Name" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "keypair"
    tags = {
        Name = "MOHIT"
    }
}