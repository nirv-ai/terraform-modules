# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
resource "aws_internet_gateway" "iway" {
  vpc_id = var.vpc-id

  tags = merge(var.tags, {
    Name         = var.ig.name
    service      = var.ig.service
    resourcetype = "internet-gateway"
  })
}
