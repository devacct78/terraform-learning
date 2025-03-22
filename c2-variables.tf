variable "aws_region" {
    description = "Region in which the AWS Resources will be provisioned"
    type = string
    default = "us-east-1"
}

variable "ec2_instance_type" {
    description = "Configuration with which the ec2 will launch"
    type = string
    default = "t2.micro"
}