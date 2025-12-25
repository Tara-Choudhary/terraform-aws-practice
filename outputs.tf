output "ec2_public_ip" {
    description = "Public IP address of the EC2 instance"
    value       = aws_instance.my_instance.public_ip  
}

output "ec2_public_dns" {
   description = "Public DNS address of the EC2 instance"
   value = aws_instance.my_instance.public_dns
}

output "vpc_security_group_ids" {
    description = "VPC Security Group IDs associated with the EC2 instance"
    value       = aws_instance.my_instance.vpc_security_group_ids  
}

output "ssh_command" {
    description = "Command to SSH into the EC2 instance"
    value = "ssh -i ${var.aws_key_pair_name} ubuntu@${aws_instance.my_instance.public_ip}"
}
