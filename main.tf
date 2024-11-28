provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "basic_example" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  subnet_id = "subnet-05a85950dbe0e1ae3"
  key_name = "test-key"
}
