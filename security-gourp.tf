resource "aws_security_group" "ssh_access_us_east_1" {
  description = "ssh access"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["187.19.233.234/32"]
  }

}

resource "aws_security_group" "access_p8080" {
  name = "access_p8080"
  description = "port 8080 access"

  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "port 8080 access"
  }
}