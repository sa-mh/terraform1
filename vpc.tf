resource "aws_vpc" "taskVPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "task-VPC"
  }
}

resource "aws_subnet" "taskVPCSubnet" {
  vpc_id                  = aws_vpc.taskVPC.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"


  tags = {
    Name = "Task-Pub-Sub"
  }
}
