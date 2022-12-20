# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
resource "aws_subnet" "sb" {
  vpc_id                  = var.vpc-id
  cidr_block              = var.cidr
  availability_zone       = var.az
  enable_dns64            = false
  map_public_ip_on_launch = true

  tags = merge(var.tags, {
    Name         = var.sb.name
    service      = var.sb.service
    resourcetype = "subnet"
  })
}
