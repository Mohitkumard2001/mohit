terraform {
    backend "s3" {
        bucket = "mohitttttttttt"
        key = "dev/terraform.tfstate"
        dynamodb_table = "statelock_dynamodb"
        region = "us-east-1"
        encrypt = true
    }
}