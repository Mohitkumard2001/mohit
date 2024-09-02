module "mod" {
    source = "../day2"
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "keypair"
}

# module:
#-take any other day as source and give that days ami, instance_type, key_name 
#-after do terraform init,plan,appy 
#-the instance will be created