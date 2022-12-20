# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface
resource "aws_network_interface" "ni" {
  subnet_id       = var.sb-id
  security_groups = var.sg-ids

  tags = merge(var.tags, {
    Name         = var.ni.name
    service      = var.ni.service
    resourcetype = "network-interface"
  })
}
