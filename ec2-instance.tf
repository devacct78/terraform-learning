resource "aws_instance" "my_ec2" {
  ami                    = data.aws_ami.ami_name.id
  instance_type          = var.ec2_instance_type
  user_data              = file("${path.module}/nginx.sh")
  key_name               = "terraform-key"
  vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]
  tags = {
    "Name" = "nginx-ec2"
  }
}