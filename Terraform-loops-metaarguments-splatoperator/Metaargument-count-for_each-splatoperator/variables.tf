variable "aws_region" {
  description = "to define the aws region"
  default     = "us-east-1"
}

variable "instance_keypair"{
  description = "instnace keypair to authenticate"
  default = "terraform-key"
}