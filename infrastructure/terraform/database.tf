resource "aws_db_instance" "rds_postgres" {
  allocated_storage    = 20
  engine              = "postgres"
  engine_version      = "13"
  instance_class      = "db.t3.micro"
  db_name             = "pikpok_db"
  username           = "admin"
  password           = "password123"
  publicly_accessible = false
}
