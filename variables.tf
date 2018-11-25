variable "region" {
  default = "us-west-2"
}

variable "aws_access_key" {
  default = ""
  description = "the user aws access key"
}

variable "AmiLinux" {
  type = "map"
  default = {
   	us-west-2 = "ami-d874e0a0"
  }
  description = "I am using the US region"
}

variable "aws_secret_key" {
  default = ""
  description = "the user aws secret key"
}

variable "vpc-cidr" {
  default = "10.0.0.0/16"
  description = "this is the CIDR for the VPC"
}
variable "public_subnet_cidr_one" {
  default = "10.0.1.0/24"
  description = "this is the CIDR for the first public subnet"
}

variable "public_subnet_cidr_two" {
  default = "10.0.2.0/24"
  description = "this is the cidr for the second public subnet"
}

variable "key_name" {
  default = "obebodekey"
  description = "the key use to ssh into EC2 machines"
}

variable "instance_type" {
  default = "db.t2.micro"
}

variable "enivironment" {
  default = "dev"
}

variable "db_engine" {
  default = "postgresql"
}

variable "multi_az" {
  default = ""
}

variable "db_port" {
  default = "5432"
}

variable "db_publicly_accessible" {
  default = "true"
}

variable "db_storage_encrypted" {
  default = "false"
}

variable "db_storage_type" {
  default = "gp2"
}

variable "db_skip_final_snapshot" {
  default = "true"
}

variable "db_username" {
  default = "ubertas"
}

variable "db_password" {
  default = "ubertas"
}

variable "db_maintenance_window" {
  default = "Mon:00:00-Mon:00:30"
}