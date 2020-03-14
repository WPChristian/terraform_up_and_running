provider "aws" {
  region = "us-east-1"
}

module "aws_db_instance" {
	source = "../../../modules/datastores/mysql"

  engine            = "mysql"
  allocated_storage = 10
  instance_class    = "db.t2.micro"
  db_name           = "database_prod"
  db_user           = "admin"
  db_password       = module.aws_db_instance.db_password
}
