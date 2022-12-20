# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

resource "aws_eip" "ip" {
  vpc = true

  network_interface = var.ni.id != "" ? var.ni.id : null
  instance = var.ec2.id != "" ? var.ec2.id : null

  tags = merge(var.tags, {
    Name         = var.ip.name
    service      = var.ip.service
    resourcetype = "elastic-ip"
  })
}
