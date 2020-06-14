resource "aws_instance" "web1" {
  ami = "ami-01d025118d8e760db"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  user_data = "${file("install_httpd1.sh")}"
  key_name = "Demo"
  tags = {
        Name = "web-1"
    }
}

resource "aws_instance" "web2" {
  ami = "ami-01d025118d8e760db"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.prod-subnet-public-2.id}"
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  user_data = "${file("install_httpd2.sh")}"
  key_name = "Demo"
  tags = {
        Name = "web-2"
    }
}


resource "aws_instance" "private" {
  ami = "ami-01d025118d8e760db"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.prod-subnet-private.id}"
  vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
  key_name = "Demo"
  tags = {
        Name = "private"
    }
}



