resource "aws_network_acl" "nacl" {
  vpc_id     = var.vpc.id
  subnet_ids = var.sb-ids

  egress {
    protocol   = -1
    rule_no    = 1
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  # TODO: check dynamic syntax example in security group
  ingress {
    protocol   = -1
    rule_no    = 1
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = merge(var.tags, {
    Name         = var.nacl.name
    service      = var.nacl.service
    resourcetype = "network-acl"
  })
}
