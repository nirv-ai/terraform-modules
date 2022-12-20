# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
# @see https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/3.18.1
resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(var.tags, {
    Name         = var.vpc.name
    service      = var.vpc.service
    resourcetype = "vpc"
  })
}
