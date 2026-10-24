variable "instance_type" {
  
  type = string
  description = "ec2 instance type ex: t2.micro"
  default = "t3.micro"
}

variable "key_pair"{
    description = "key pair to authenticate for ssh"
    type = string
    default = "terraform-key"
}

