provider "aws" {
	region = "us-east-1"
}

output "elb_dns_name" {
  value = module.webserver_cluster.elb_dns_name
}

module "webserver_cluster" {
	source = "../../../modules/services/webserver-cluster"

	cluster_name = "webservers-stage"
	db_remote_state_bucket = "terraform-up-and-running-state-cj-1"
	db_remote_state_key = "stage/datastores/mysql/terraform.tfstate"

	instance_type = "t2.micro"
	min_size = 2
	max_size = 2
	desired_capacity = 2
}

resource "aws_security_group_rule" "allow_testing_inbound" {
	type 	= "ingress"
	security_group_id = module.webserver_cluster.elb_security_group_id

	from_port 	= 12345
	to_port 		= 12345
	protocol 		= "tcp"
	cidr_blocks	= ["0.0.0.0/0"]

}
