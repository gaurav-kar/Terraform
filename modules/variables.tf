#Define all variables - Add to *.tfvars file
variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "avail_zone" {}
variable "env_prefix" {}
variable "sg_allowed_ips" {}
variable "instance_type" {}
variable "public_key_location" {}