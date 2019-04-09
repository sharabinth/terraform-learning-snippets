provider "aws" {
  access_key = "${var.AWS_ACCESS}"
  secret_key = "${var.AWS_SECRET}"
  region     = "${var.aws_region}"
}

resource "aws_instance" "msb-web" {
  #ami           = "ami-2757f631"
  #ami           = "ami-b374d5a5"
  ami = "${lookup(var.amis,var.aws_region)}"

  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.msb-web.public_ip} > ip_address.txt"
  }
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.msb-web.id}"
}
