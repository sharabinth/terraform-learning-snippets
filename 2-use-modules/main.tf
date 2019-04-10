provider "aws" {
  access_key = "${var.AWS_ACCESS}"
  secret_key = "${var.AWS_SECRET}"
  region     = "${var.aws_region}"
}

module "consul" {
  source  = "hashicorp/consul/aws"
  version = "0.6.0"
  
}
