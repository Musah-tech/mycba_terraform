resource "aws_subnet" "public" {
    count                   = length(var.public_subnets)
    vpc_id                  = aws_vpc.main_vpc.id 
    cidr_block              = var.public_subnets[count.index]
    availability_zone       = var.availabilty_zones[count.index]
    map_public_ip_on_launch = true

    tags = {
        Name = "public_Subnet-${count.index + 1}"
    } 
}

resource "aws_subnet" "private" {
  count             = length(var.private_subnets)
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_subnets[count.index]
  availability_zone = var.availabilty_zones[count.index]
}