resource "aws_instance" "Name" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "keypair"
    depends_on = [aws_s3_bucket.dependent]   #dependent = "description name"
    tags = {
        Name = "MK"
    }
}
resource "aws_s3_bucket" "dependent" {
    bucket = "kumarrrrrrrrrr"  
}

#this is a dependent-block 
#example - in the above case:
#-first we had given a instance 
#-then created a s3_bucket 
#-after we had given "depends_on = [aws_s3_bucket.dependent]" to instance
#we can give vice versa also


#by giving this first the main one will create and after that the "depends_on" will create


