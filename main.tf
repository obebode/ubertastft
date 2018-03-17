provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "app" {  
	ami = "ami-dff017b8"  
	instance_type = "t2.micro"
	tags {
    	Name = "java-api-instance"
  	}
}