resource "aws_subnet" "ubertas_subnet_app_servers" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.public_subnet_cidr_one}"
  tags {
    Name = "Public Subnet"
  }
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
}

resource "aws_route_table_association" "ubertas_app_public" {
  subnet_id = "${aws_subnet.ubertas_subnet_app_servers.id}"
  route_table_id = "${aws_route_table.rt_app_public.id}"
}

resource "aws_subnet" "ubertas_subnet_db_servers" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.public_subnet_cidr_two}"

  map_public_ip_on_launch = private

  tags {
    Name = "Postgres RDS Subnet"
  }
  availability_zone = "${data.aws_availability_zones.available.names[1]}"
}

resource "aws_route_table_association" "ubertas_db_private" {
  subnet_id = "${aws_subnet.ubertas_subnet_db_servers.id}"
  route_table_id = "${aws_route_table.rt_db_private.id}"
}