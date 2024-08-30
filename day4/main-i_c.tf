resource "aws_instance" "Name" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.nano"
    key_name = "demo"
    tags = {
        Name = "KUMAR"
}
lifecycle {
   ignore_changes = [KUMAR] #used for ignoring changes ,if we give any
}
}
