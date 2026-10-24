output "instance_publicip"{
    description = "public ip of the instance"
    value = aws_instance.my_ec2_vm.public_ip
}

output "instance_dns"{
    description = "public dns of the instance"
    value = aws_instance.my_ec2_vm.public_dns
}