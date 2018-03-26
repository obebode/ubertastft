resource "aws_subnet" "us-west-2a-public" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.public_subnet_cidr_one}"
  tags {
        Name = "Public Subnet"
  }
 availability_zone = "${data.aws_availability_zones.available.names[0]}"
}

resource "aws_route_table_association" "us-west-2a-public" {
    subnet_id = "${aws_subnet.us-west-2a-public.id}"
    route_table_id = "${aws_route_table.us-west-2a-public.id}"
}

resource "aws_subnet" "us-west-2b-public" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.public_subnet_cidr_two}"
  tags {
        Name = "Public Subnet"
  }
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
}

resource "aws_route_table_association" "us-west-2b-public" {
    subnet_id = "${aws_subnet.us-west-2b-public.id}"
    route_table_id = "${aws_route_table.us-west-2b-public.id}"
}