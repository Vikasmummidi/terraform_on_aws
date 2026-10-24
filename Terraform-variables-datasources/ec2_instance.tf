resource "aws_instance" "my_ec2_vm"{
ami=data.aws_ami.amzlinux2.id
instance_type=var.instance_type
user_data = file("${path.module}/app1-install.sh")
}