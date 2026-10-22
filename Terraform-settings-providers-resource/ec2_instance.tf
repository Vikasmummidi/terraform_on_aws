resource "aws_instance" "myec2vm"{
    ami = "ami-0567589d25e06853e"
    instance_type="t3.micro"
    user_data=file("${path.module}/app-1_install.sh")
    tags={
        "Name" = "EC2 demo"
    }
}