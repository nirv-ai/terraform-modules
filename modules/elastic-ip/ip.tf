resource "aws_eip" "ip" {
  vpc = true

  tags = merge(var.tags, {
    Name         = var.ip.name
    service      = var.ip.service
    resourcetype = "elastic-ip"
  })
}
