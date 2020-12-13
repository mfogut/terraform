locals {
  vpc_name = "Terraform-Test-VPC"
}

resource "aws_vpc" "test_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name        = local.vpc_name
    Environment = terraform.workspace
    Location    = "USA"
  }
}
