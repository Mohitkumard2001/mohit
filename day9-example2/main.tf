module "mod" {
    source = "../day2"
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
}

#same as moduel but key_name not given 