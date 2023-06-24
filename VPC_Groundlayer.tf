resource "aws_vpc" "main" {
 cidr_block = "172.20.0.0/16"
 
 tags = {
   Name = "3tier-arch"
 }
}

resource "aws_subnet" "public_subnets" {
 count      = length(var.public_subnets)
 vpc_id     = aws_vpc.main.id
 cidr_block = element(var.public_subnets, count.index)
 availability_zone = element(var.azs, count.index)
 
 tags = {
   Name = "3tier-arch-Public Subnet ${count.index + 1}"
 }
}
 
resource "aws_subnet" "private_subnets" {
 count      = length(var.private_subnets)
 vpc_id     = aws_vpc.main.id
 cidr_block = element(var.private_subnets, count.index)
 availability_zone = element(var.azs, count.index)
 
 tags = {
   Name = "3tier-arch-Private Subnet ${count.index + 1}"
 }
}