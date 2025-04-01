provider aws {
    region = "us-east-2"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")

  }

resource "aws_instance" "web" {
  ami           = "ami-0efc43a4067fe9a3e"
  instance_type = "t2.micro"
  key_name  = aws_key_pair.deployer.key_name

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
    host     = self.public_ip
  }


  provisioner "remote-exec" {
    inline = [
        "sudo yum install httpd -y"
    ]
  }

}


