locals {
  vpc_id = "vpc-044178606ada54bbc"
  subnet_id = "subnet-0b35ea62029419b23"
  ssh_user = "ubuntu"
  key_name = "keypair-michaelt"
  private_key_path = "~/Downloads/keypair-michaelt.pem"
}

provider "aws" {
  region = "us-east-1"
  profile = "jhoseph"
}

resource "aws_security_group" "nginx" {
  name = "nginx access"
  vpc_id = local.vpc_id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "nginx" {
  ami = "ami-0261755bbcb8c4a84"
  subnet_id = local.subnet_id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  security_groups = [aws_security_group.nginx.id]
  key_name = local.key_name
  lifecycle {
    #prevent_destroy = true
    ignore_changes = [ami, instance_type]
  }
  tags = {
    Name = "ServerNginx"
  }

  provisioner "remote-exec" {
    inline = ["echo 'Wait until SSH is ready'"]
    connection {
      type = "ssh"
      user = local.ssh_user
      private_key = file(local.private_key_path)
      host = aws_instance.nginx.public_ip
    }
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i ${aws_instance.nginx.public_ip}, --private-key ${local.private_key_path} ansible.yml"
  }
}

output "nginx_ip" {
  value = aws_instance.nginx.public_ip
}