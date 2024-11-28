provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
}

resource "aws_instance" "ubuntu1" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  subnet_id = "subnet-05a85950dbe0e1ae3"
  provider = "aws.us-east-1"
}

resource "aws_instance" "ubuntu2" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  subnet_id = "subnet-05a85950dbe0e1ae3"
  provider = "aws.us-west-2"
}
