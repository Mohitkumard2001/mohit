 provider "aws" {
    region = "us-east-1"
 }

#store the statefile
 resource "aws_s3_bucket" "test" {
    bucket = "mohitttttttttt"
 }

#dynamodb
#locking provision for state file 
resource "aws_dynamodb_table" "dynamodb-terraform-statelock" {
    name = "statelock_dynamodb" #jst give any name 
    hash_key = "LockID"         #only Lock_ID should be used for hash_key
    read_capacity = 20          
    write_capacity = 20
attribute {
    name = "LockID"             #give hash_key
    type = "S"                  #type is string
}
}