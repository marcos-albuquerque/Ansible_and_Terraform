resource "aws_instance" "app_server" {
  ami           = var.ami["us-east-1"]
  instance_type = var.instance_type
  key_name = var.key_name

  # user_data = <<-EOF
  #                #!/bin/bash
  #                cd /home/ubuntu
  #                echo "<h1>Made with Terraform</h1>" > index.html
  #                nohup busybox httpd -f -p 8080 &
  #                EOF

  tags = {
    Name = "Terraform Ansible Python"
  }

  vpc_security_group_ids = ["${aws_security_group.ssh_access_us_east_1.id}",
                             "${aws_security_group.access_p8080.id}"]
}

