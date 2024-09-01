resource "aws_instance" "test" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "keypair"
    count = length(var.test) #it will print 3
    
  tags = {
    #Name = "dev-1"
    #Name = "web-${count.index}"
    Name= var.test[count.index]
  }
}

variable "test" {
    type = list(string)
    default = [ "dev","prod"]
  
}
