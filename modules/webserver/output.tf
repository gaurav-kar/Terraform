output "aws_instance" {
    value = aws_instance.myapp-server
}

output "ami" {
    value = data.aws_ami.amazon-linux-image
}