data "aws_availability_zones" "all" {
}

resource "aws_db_instance" "example" {

  skip_final_snapshot = true

  engine            = var.engine
  allocated_storage = var.allocated_storage
  instance_class    = var.instance_class
  name              = var.db_name
  username          = var.db_user
  password          = "chopper1"
}
