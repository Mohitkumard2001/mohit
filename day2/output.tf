output "public_ip" {
    value = aws_instance.Name.public_ip
}
output "private_ip" {
    value = aws_instance.Name.private_ip
}
output "ami" {
    value = aws_instance.Name.ami
}