variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t3.micro"
}

variable "volume_size" {
  description = "Root EBS volume size in GB"
  type = number
  default = 15
}


variable "aws_key_pair_name" {
  description = "Name of the AWS key pair"
  type = string
  default = "terra-key-aws"
  
}

variable "ami" {
    description = "AMI ID for the EC2 instance"
    type = string
    default = "ami-0ecb62995f68bb549" # ubuntu us-east-1
  
}