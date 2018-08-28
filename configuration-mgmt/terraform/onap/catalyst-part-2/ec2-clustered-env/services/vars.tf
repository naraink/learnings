variable "onap_aws_region" {
  description = "aws region for onap"
  default     = "us-east-1"
}

variable "onap_ami_id" {
  description = "AMI ID for stable Ubuntu version that was available during initial setup"
  default     = "ami-759bc50a"
}

variable "onap_master_instance_type" {
  description = "instance type for master instances"
  default     = "r4.2xlarge"
}

variable "onap_node_instance_type" {
  description = "instance type for node instances"
  default     = "r4.2xlarge"
}

variable "onap_subnet_id" {
  description = "subnet id to use"
  default     = "subnet-71c9853b"
}
