resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.test_vpc.id

  route {
    cidr_block = var.public-rt-destination
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Terraform-Public-RT"
  }
}
