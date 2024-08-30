resource "aws_instance" "public" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "keypair"
    subnet_id = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.security.id]
}