resource "aws_subnet" "ivan_subnet_01" {
  vpc_id     = aws_vpc.ivan_vpc_01.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}