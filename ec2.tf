# EC2 
resource "aws_instance" "hdfc-ec2" {
  ami                    = "ami-098f55b4287a885ba"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.hdfc-pub.id
  vpc_security_group_ids = [aws_security_group.hdfc-web.id]
  key_name               = "ravi"
  tags = {
    Name = "HDFC-WEB"
  }
}
