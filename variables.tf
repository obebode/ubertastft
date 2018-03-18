variable "region" {
  default = "eu-west-2"
}

variable "aws_access_key" {
  default = "AKIAIPNIY62HHOQY6IXA"
  description = "the user aws access key"
}

variable "AmiLinux" {
  type = "map"
  default = {
   	eu-west-2 = "ami-dff017b8"
  }
  description = "I using the London region"
}

variable "aws_secret_key" {
  default = "pJW7zMCDV+g4hh9B7jt/CQ0EOrTrJIkkq25CBIj9"
  description = "the user aws secret key"
}

variable "vpc-fullcidr" {
  default = "10.0.0.0/16"
  description = "the vpc cdir"
}
variable "Subnet-Public-AzA-CIDR" {
  default = "10.0.1.0/24"
  description = "the cidr of the public subnet"
}

variable "Subnet-Private-AzA-CIDR" {
  default = "10.0.2.0/24"
  description = "the cidr of the private subnet"
}

variable "key_name" {
  default = ""
  description = "the ssh key to use in the EC2 machines"
}

variable "DnsZoneName" {
  default = "ola.ubertas"
  description = "the internal dns name"
}