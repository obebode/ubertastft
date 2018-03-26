resource "aws_instance" "javaapp" {
  ami           = "${lookup(var.AmiLinux, var.region)}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "${aws_subnet.us-west-2a-public.id}"
  vpc_security_group_ids = ["${aws_security_group.APP.id}"]
  key_name = "${var.key_name}"
  tags {
        Name = "java App Server"
  }

}

resource "aws_eip" "javaapp" {
  instance = "${aws_instance.javaapp.id}"
  vpc = true
}

resource "aws_instance" "database" {
  ami           = "${lookup(var.AmiLinux, var.region)}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "${aws_subnet.us-west-2b-public.id}"
  vpc_security_group_ids = ["${aws_security_group.Database.id}"]
  key_name = "${var.key_name}"
  tags {
        Name = "Database Server"
  }

}

resource "aws_eip" "database" {
  instance = "${aws_instance.database.id}"
  vpc = true
}


