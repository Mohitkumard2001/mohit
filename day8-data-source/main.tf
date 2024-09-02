data "aws_subnet" "pub" {
    filter {
        name = "tag:Name"         #same should be given
        values = ["public"]       #subnet name
    }
}
data "aws_ami" "ami_id" {
    most_recent = true            #same should be given
    owners = ["amazon"]           #same should be given
    filter {
        name = "name"                             #same should be given
        values = [ "amzn2-ami-hvm-*-gp2" ]        #same should be given
    }
}
resource "aws_instance" "ec2" {
    ami = data.aws_ami.ami_id.id
    instance_type = "t2.micro"
    key_name = "keypair"
    subnet_id = data.aws_subnet.pub.id
    tags = {
        Name = "MK"
    }
}

#data source :
#-firstly call aws_subnet and aws_ami same like import but not command in the terminal by top process
#-then after give a resource "aws_instance" 
#-specify the ami,instance_type, key_name and subnet_id and then give any other tag name and try wheather the new instance is comming or not with same ami_id and subnet
#it should come
