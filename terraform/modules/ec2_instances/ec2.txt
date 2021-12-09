resource "aws_instance" "Devopssupp_webserver" {
ami = "xxxxxxx"
instance_type = "t2.micro"

tags = {
      Name = "Devopssupp_ec2_webserver"      
    }

}