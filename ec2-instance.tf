resource "aws_instance" "my_ec2" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
}