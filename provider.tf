provider "aws" {
  region  = "ap-south-1" # Replace with your desired AWS region
}

terraform {
  backend "s3" {
    bucket  = "manohar-terraform-code-9966" # Replace with your S3 bucket name
    key     = "statefile/terraform.tfstate"
    region  = "ap-south-1" # Replace with your desired region
  }
}
