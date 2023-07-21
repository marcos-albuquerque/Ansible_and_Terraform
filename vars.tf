variable "ami" {
  type = map

  default = {
    "us-east-1" = "ami-0261755bbcb8c4a84"
  }
}

variable "instance_type" {
  type = string

  default = "t2.micro"
}

variable "key_name" {
  type = string

  default = "ubuntu"
}

variable "cidr_blocks" {
  type = list

  default = ["187.19.233.234/32"]
}