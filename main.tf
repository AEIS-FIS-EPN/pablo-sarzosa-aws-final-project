provider "aws" {
  shared_config_files = ["/Users/pavox20/.aws/config"]
  shared_credentials_files = ["/Users/pavox20/.aws/credentials"]
}

resource "aws_vpc" "fis_vpc" { #Defining the VPC with a specific CIDR block
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" { #Defining the public subnet with a specific CIDR block
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.fis_vpc.id
}

resource "aws_subnet" "private_subnet" { #Defining the private subnet with a specific CIDR block
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.fis_vpc.id
}

resource "aws_internet_gateway" "fis_public_internet_gateway" { #Defining the internet gateway
  vpc_id =  aws_vpc.fis_vpc.id
}

resource "aws_route_table" "fis_public_subnet_route_table" { #Defining the route table for the public subnet, allowing all traffic to the internet
  vpc_id =  aws_vpc.fis_vpc.id

    route {
            cidr_block = "0.0.0.0/0"
            gateway_id = aws_internet_gateway.fis_public_internet_gateway.id
    }

    route  {
            ipv6_cidr_block = "::/0"
            gateway_id = aws_internet_gateway.fis_public_internet_gateway.id
    }
}

resource "aws_route_table_association" "fis_public_association" {
  route_table_id = aws_route_table.fis_public_subnet_route_table.id
  subnet_id = aws_subnet.public_subnet.id
}
