resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw1.id
  }

 
  tags = {
    Name = "route_table1"
  }
}


resource "aws_route_table_association" "a-1" {
  subnet_id      = aws_subnet.ps1.id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_route_table_association" "a-2" {
  subnet_id      = aws_subnet.ps2.id
  route_table_id = aws_route_table.rt1.id
}