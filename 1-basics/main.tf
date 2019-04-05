provider "aws" {
  access_key = "${var.AWS_ACCESS}"
  secret_key = "${var.AWS_SECRET}"
  region     = "${var.aws_region}"
}

resource "aws_instance" "msb-web" {
  #ami           = "ami-2757f631"
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}
