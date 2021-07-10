
#Configure AWS VPC
resource "aws_vpc" "myapp-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.env_prefix}-vpc"

  }

}

module "myapp-subnet" {
  source            = "./subnet"
  avail_zone        = var.avail_zone
  env_prefix        = var.env_prefix
  subnet_cidr_block = var.subnet_cidr_block
  vpc_id            = aws_vpc.myapp-vpc.id

}

module "myapp-webserver" {
  source              = "./webserver"
  vpc_id              = aws_vpc.myapp-vpc.id
  sg_allowed_ips      = var.sg_allowed_ips
  env_prefix          = var.env_prefix
  public_key_location = var.public_key_location
  instance_type       = var.instance_type
  subnet_id           = module.myapp-subnet.subnet.id
}
