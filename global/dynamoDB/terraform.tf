terraform {
	backend "s3" {
		encrypt		= true
		bucket		= "terraform-up-and-running-state-cj-1"
		dynamodb_table	= "terraform-state-lock-dynamo"
		region		= "us-east-1"
		key 		= "global/dynamoDB/terraform.tfstate"
	}
}
