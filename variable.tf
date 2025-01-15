variable "region" {
    default = "eu-west-2"
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "public_subnets" {
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "private_subnets" {
  type = list(string)
  default = [ "10.0.3.0/24", "10.0.4.0/24" ]
}

variable "availabilty_zones" {
  type = list(string)
  default = [ "eu-west-2a", "eu-west-2b" ]
}

variable "key_pair" {
  default = "cba_keypair"
}

variable "instance_type" {
  default = "t2.micro"
}