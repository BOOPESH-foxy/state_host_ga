# terraform {
#   backend "s3" {
#     bucket = "state-host"
#     key    = "terraform-state/terraform.tfstate"
#     region = "ap-south-1"
#     dynamodb_table = "terraform_locks"
#   }
# }

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}