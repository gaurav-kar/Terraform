#Outputs
output "ec2_public_ip" {
  value = module.myapp-webserver.aws_instance.public_ip
}

output "aws_ami_id" {
  value = module.myapp-webserver.ami.id
}