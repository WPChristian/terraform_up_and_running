variable "engine" {
  description = "The engine for the database"
}

variable "allocated_storage" {
  description = "The storage amount for the database"
}

variable "instance_class" {
  description = "The type of aws instance for the database"
}

variable "db_name" {
  description = "The name for the database"
}

variable "db_user" {
  description = "The user for the database"
}

variable "db_password" {
  description = "The password for the database"
}
