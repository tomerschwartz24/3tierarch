#Create a VPC resource named 3tier-arch 
resource "aws_vpc" "main" {
 cidr_block = "172.20.0.0/16"

 tags = {
   Name = "3tier-arch"
 }
}

#Create public subnets (2 in total for this 3 tier architecture mock project)
resource "aws_subnet" "public_subnets" {
 count      = length(var.public_subnets)
 vpc_id     = aws_vpc.main.id
 cidr_block = element(var.public_subnets, count.index)
 availability_zone = element(var.azs, count.index)
 
 tags = {
   Name = "3tier-arch-Public Subnet ${count.index + 1}"
 }
}
 
#Create private subnets (6 In total for this mock 3tier architecture mock project)
resource "aws_subnet" "private_subnets" {
 count      = length(var.private_subnets)
 vpc_id     = aws_vpc.main.id
 cidr_block = element(var.private_subnets, count.index)
 availability_zone = element(var.azs, count.index)
 
 tags = {
   Name = "3tier-arch-Private Subnet ${count.index + 1}"
 }
}

# Create an Internet Gateway in order to access the internet 
resource "aws_internet_gateway" "gw" {
 vpc_id = aws_vpc.main.id
 
 tags = {
   Name = "3tier-arch-IGW"
 }
}


#Create NAT Gateway at element 0 (First public subnet)
resource "aws_nat_gateway" "ngw" {
  allocation_id = "${aws_eip.EIP_3tier_arch.id}"
  subnet_id     = "${aws_subnet.public_subnets[0].id}"

  tags = {
    Name = "3tier-arch-NGW"
  }
}

#Create an Elastic IP for the NAT Gateway
resource "aws_eip" "EIP_3tier_arch" {
  domain = "vpc"

  tags = {
    Name = "3tier-arch-NATGatewayEIP"
  }
}