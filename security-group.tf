#SG for SSH
resource "aws_security_group" "vpc_ssh" {
  name        = "vpc-ssh"
  description = "SG for SSH"
  vpc_id      = "vpc-0d5c9732d76cda92f" #if vpc_id not configured, tf will use the default VPC.

  ingress {
    description = "Allow port 22 for SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-ssh"
  }
}

#SG for webserver
resource "aws_security_group" "vpc_web" {
  name        = "vpc-web"
  description = "SG for web"
  vpc_id      = "vpc-0d5c9732d76cda92f" #if vpc_id not configured, tf will use the default VPC.

  ingress {
    description = "Allow port 80 for HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow port 443 for HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-web"
  }
}