
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# @see https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/tree/master/examples/complete
# @see https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/spot_instance_request
resource "aws_instance" "ec2" {
  ami                                  = var.ec2.ami
  instance_type                        = var.ec2.type
  availability_zone                    = var.az
  iam_instance_profile                 = var.ec2.iam-profile
  instance_initiated_shutdown_behavior = var.ec2.on-shutdown
  key_name                             = var.ec2.key
  monitoring                           = var.ec2.monitor

  network_interface {
    network_interface_id = var.ni-id
    device_index         = var.ni-device-index
  }

  root_block_device {
    delete_on_termination = true
    volume_size           = var.ec2.root-size
    volume_type           = var.ec2.root-type

  }

  tags = merge(var.tags, {
    Name         = var.ec2.name
    service      = var.ec2.service
    resourcetype = "ec2"
  })
}
