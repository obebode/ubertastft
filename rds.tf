resource "aws_db_instance" "ubertas_rds" {
  instance_class = "${var.instance_type}"
  allocated_storage = 5
  backup_retention_period = 0
  engine = "${var.db_engine}"
  identifier = "ubertas-rds-${var.enivironment}"
  multi_az = "${var.multi_az}"
  port = "${var.db_port}"
  publicly_accessible = "${var.db_publicly_accessible}"
  storage_encrypted = "${var.db_storage_encrypted}"
  storage_type = "${var.db_storage_type}"
  skip_final_snapshot = "${var.db_skip_final_snapshot}"
  username = "${var.db_username}"
  password = "${var.db_password}"

  vpc_security_group_ids = []
  db_subnet_group_name = ""
  maintenance_window = "${var.db_maintenance_window}"

  tags {
    Name = "Postgres RDS instance"
  }
}