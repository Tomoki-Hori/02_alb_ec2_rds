# vpc.tf

resource "aws_vpc" "test_vpc_01" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = test_vpc_01
    }
}

# subnet.tf

resource "aws_subnet" "test_public_1a" {
    vpc_id = aws_vpc.test_vpc_01.vpc_id
    availability_zone = "ap-northeast-1a"
    cidr_block = "10.0.10.0/24"

    tags = {
        Name = test_public_1a
    }

}

resource "aws_subnet" "test_public_1c" {
    vpc_id = aws_vpc.test_vpc_01.vpc_id
    availability_zone = "ap-northeast-1c"
    cidr_block = "10.0.20.0/24"
    
    tags = {
        Name = test_public_1a
    }

}