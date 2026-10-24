resource "aws_instance" "myec2vm" {
    ami = data.aws_ami.amzlinux2.id
    instance_type="t3.micro"
    key_name= var.instance_keypair
    user_data = file("${path.module}/app1-install.sh")
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
    count=2
    tags={
        Name="count-demo-${count.index}"
    }

  
}