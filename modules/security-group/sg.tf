# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group
resource "aws_security_group" "sg" {
  name        = var.sg.name
  vpc_id      = var.vpc.id
  description = var.sg.desc

  tags = merge(var.tags, {
    Name         = var.sg.name
    service      = var.sg.service
    resourcetype = "security-group"
  })

  dynamic "ingress" {
    for_each = var.in
    content {
      description = ingress.value["desc"]
      from_port   = ingress.value["from"]
      to_port     = ingress.value["to"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidrs"]
    }
  }

  dynamic "egress" {
    for_each = var.out
    content {
      description = egress.value["desc"]
      from_port   = egress.value["from"]
      to_port     = egress.value["to"]
      protocol    = egress.value["protocol"]
      cidr_blocks = egress.value["cidrs"]
    }
  }
}
