resource "aws_vpc" "Name" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "my_vpc"
    }
}
resource "aws_internet_gateway" "way" {
    vpc_id = aws_vpc.Name.id
    tags = {
        Name = "ig"
    }    
}
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.Name.id
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "public_subnet"
    }
}
resource "aws_subnet" "private" {
    vpc_id = aws_vpc.Name.id
    cidr_block = "10.0.2.0/24"
    tags = {
        Name = "private_subnet"
    }
}
resource "aws_route_table" "table1" {
    vpc_id = aws_vpc.Name.id
    tags = {
        Name = "rt1"
    }
route {
    gateway_id = aws_internet_gateway.way.id
    cidr_block = "0.0.0.0/0"
}
}
resource "aws_route_table_association" "association" {
    route_table_id = aws_route_table.table1.id
    subnet_id = aws_subnet.public.id
}
resource "aws_security_group" "security" {
    vpc_id = aws_vpc.Name.id
    tags = {
        Name = "sg"
    }
ingress {
    description = "tls from vpc"
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
egress {
    description = "tls from vpc"
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
}


