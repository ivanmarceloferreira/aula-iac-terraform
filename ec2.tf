data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_key_pair" "terraform_deploy_key" {
  key_name   = "deployer-key"
  # public_key = "public key"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.ivan_subnet_01.id
  key_name = aws_key_pair.terraform_deploy_key.key_name

  tags = {
    Name = "Hello-Terraform"
  }
}
