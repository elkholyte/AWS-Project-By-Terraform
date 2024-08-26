terraform {
  backend "s3" {
    bucket         = "terr"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "test"
  }
}