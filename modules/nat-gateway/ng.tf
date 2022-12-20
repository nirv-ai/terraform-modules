# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
resource "aws_nat_gateway" "nway" {
  allocation_id = var.ip-id
  subnet_id     = var.sb-id

  tags = merge(var.tags, {
    Name         = var.ng.name
    service      = var.ng.service
    resourcetype = "nat-gateway"
  })
}
