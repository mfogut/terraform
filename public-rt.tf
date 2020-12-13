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

resource "aws_route_table_association" "pub_sub_association" {
  count = length(local.az_names)
  route_table_id = aws_route_table.public-rt.id
  subnet_id = aws_subnet.public_subnet.*.id[count.index]
}
