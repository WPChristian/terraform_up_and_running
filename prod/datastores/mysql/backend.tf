# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    key            = "prod/datastores/mysql/terraform.tfstate"
    region         = "us-east-1"
    bucket         = "terraform-up-and-running-state-cj-1"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt        = true
  }
}