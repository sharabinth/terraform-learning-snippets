variable "AWS_ACCESS" {}

variable "AWS_SECRET" {}

variable "amis" {
  type = "map"

  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
  }
}

variable "aws_region" {
  default = "us-east-1"
}
