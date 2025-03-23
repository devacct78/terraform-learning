variable "aws_region" {
  description = "Region in which the AWS Resources will be provisioned"
  type        = string
  default     = "us-east-1"
}

variable "ec2_instance_type" {
  description = "Configuration with which the ec2 will launch"
  type        = string
  default     = "t2.micro"
}

variable "key_pair" {
  description = ".pem Key which will be used to connect to EC2 remotely using SSH"
  type        = string
  default     = "terraform-key"
}