terraform {
    backend "s3" {
        bucket = "mohitttttttttt"
        key = "dev/terraform.tfstate"              #folder name/terraform.tfstate
        region = "us-east-1"
        dynamodb_table = "statelock_dynamodb"      #dymanodb_table name
        encrypt = true
    }
}