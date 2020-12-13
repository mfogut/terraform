resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "Terrafrom-VPC-IGW-${terraform.workspace}"
  }

}
