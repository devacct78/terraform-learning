resource "aws_instance" "my_ec2" {
  ami           = data.aws_ami.ami_name.id
  instance_type = var.ec2_instance_type
  user_data     = file("${path.module}/nginx.sh")
  tags = {
    "Name" = "nginx-ec2"
  }
}