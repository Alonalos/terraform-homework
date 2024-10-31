provider aws {
    region = var.region
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
  
}

resource "aws_instance" "web" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  subnet_id = aws_subnet.main.id
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")
  count = var.instance_count
}

output ec2 {
    value = aws_instance.web[0].public_ip
}

