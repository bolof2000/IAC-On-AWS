provider "aws" {
  region = ""
  access_key = ""
  secret_key = ""
}
resource "aws_instance" "ec2_instance" {
  ami = "ami-922924f7"
  instance_type = "t2.micro"

}
output "publicIP" {
  value = aws_instance.ec2_instance.public_ip
}