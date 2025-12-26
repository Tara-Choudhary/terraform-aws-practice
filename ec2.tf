# Default VPC

resource "aws_default_vpc" "default" {

}

# Security Group

resource "aws_security_group" "my_security_group" {
  name        = "terraform_security_group"
  description = "Security group managed by Terraform"
  vpc_id      = aws_default_vpc.default.id


#   inbound rule 

   ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow SSH access from anywhere"
   }

   ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow HTTP access from anywhere"
   }

   ingress{
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow access to port 8080 from anywhere(flask app)"
   }

# outbound rule 

   egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow all outbound traffic"
   }

   tags ={
        Name = "terraform_security_group"
   }

}


# key pair

resource "aws_key_pair" "my_key" {
  key_name   = var.aws_key_pair_name
  public_key = file("terra-key-aws.pub")
}


# EC2 Instance

resource "aws_instance" "my_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.my_key.key_name
  vpc_security_group_ids      = [aws_security_group.my_security_group.id]
  user_data                   = file("install_nginx.sh")

#   volume block
    root_block_device {
        volume_size = var.volume_size
        volume_type = "gp3"
    }

  tags = {
    Name = "Terraform_EC2_Instance"
  }
  
}
