resource "aws_instance" "web" {
  ami           = var.ami_id #Ubuntu Server 22.04 LTS Free tier image >>>ami-0fb391cce7a602d1f
  instance_type = var.inst_type
  key_name      = "terraform_demo"
  #subnet_id = aws_subnet.public_subnet.id
  subnet_id = aws_subnet.public_subnet.id
  #vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]
  vpc_security_group_ids      = ["${aws_security_group.allow_http_ssh.id}"]
  user_data                   = file("nginx-install.sh")
  availability_zone           = var.az_name
  associate_public_ip_address = true

  tags = local.common_tags

}

