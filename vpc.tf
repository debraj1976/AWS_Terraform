resource "aws_vpc" "prod-vpc" {
    cidr_block = "172.16.0.0/24"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
   
    tags = {
        Name = "prod-vpc"
    }
}
resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "172.16.0.0/25"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1a"
    tags = {
        Name = "prod-subnet-public-1"
    }
}
resource "aws_subnet" "prod-subnet-public-2" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "172.16.0.128/26"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1b"
    tags = {
        Name = "prod-subnet-public-2"
    }
}
resource "aws_subnet" "prod-subnet-private" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "172.16.0.192/26"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1c"
    tags = {
        Name = "prod-subnet-private"
    }
}



