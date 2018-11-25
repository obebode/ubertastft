# Declare the data source
data "aws_availability_zones" "available" {}


resource "aws_internet_gateway" "default" {
   vpc_id = "${aws_vpc.default.id}"
    
}

resource "aws_network_acl" "all" {
   vpc_id = "${aws_vpc.default.id}"
    egress {
        protocol = "-1"
        rule_no = 2
        action = "allow"
        cidr_block =  "0.0.0.0/0"
        from_port = 0
        to_port = 0
    }
    ingress {
        protocol = "-1"
        rule_no = 1
        action = "allow"
        cidr_block =  "0.0.0.0/0"
        from_port = 0
        to_port = 0
    }
    tags {
        Name = "open acl"
    }
}

resource "aws_route_table" "rt_app_public" {
  vpc_id = "${aws_vpc.default.id}"
  tags {
      Name = "Public"
  }
  route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.default.id}"
    }
}

resource "aws_route_table" "rt_db_private" {
  vpc_id = "${aws_vpc.default.id}"
  tags {
      Name = "Public"
  }
  route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.default.id}"
    }
}

