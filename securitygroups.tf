resource "aws_security_group" "APP" {
  name = "Java API"
  tags {
        Name = "app_vpc"
  }
  description = "Allow incoming HTTP connections."
  vpc_id = "${aws_vpc.default.id}"

  ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
  }

   ingress {
    from_port   = "5000"
    to_port     = "5000"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress { 
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = ["${var.public_subnet_cidr_two}"]
  }
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
      Name = "AppServerSG"
  }
}

/*resource "aws_security_group" "Database" {
  name = "Database"
  description = "Allow incoming database connections."

  tags {
        Name = "Database"
  }

  vpc_id = "${aws_vpc.default.id}"
  ingress {
      from_port = 5432
      to_port = 5432
      protocol = "tcp"
      security_groups = ["${aws_security_group.APP.id}"]
  }

   ingress {
      from_port = 5432
      to_port = 5432
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port   = "22"
      to_port     = "22"
      protocol    = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
      Name = "DatabaseServerSG"
  }
 
}
*/




