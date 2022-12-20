# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume
resource "aws_ebs_volume" "ebs" {
  availability_zone = var.az
  type              = var.ebs.type
  size              = var.ebs.size

  tags = merge(var.tags, {
    Name         = var.ebs.name
    service      = var.ebs.service
    resourcetype = "ebs"
  })
}
