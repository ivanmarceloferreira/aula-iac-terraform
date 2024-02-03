# Create a VPC
resource "aws_vpc" "ivan_vpc_01" {
  cidr_block = "10.0.0.0/16"
}
