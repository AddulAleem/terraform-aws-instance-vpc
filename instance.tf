resource "aws_instance" "web"  {
ami = "ami-0fb391cce7a602d1f" #Ubuntu Server 22.04 LTS Free tier image 
instance_type = "t2.micro"
key_name = "terraform_demo"
#subnet_id = aws_subnet.public_subnet.id
subnet_id = "${aws_subnet.public_subnet.id}"
#vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]
vpc_security_group_ids = ["${aws_security_group.allow_http_ssh.id}"]
user_data = file("nginx-install.sh")
availability_zone = "eu-west-2a"
associate_public_ip_address = true

tags = { 
 "Name" = "WebApp-terraform"
   }
}

