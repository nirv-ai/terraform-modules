# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
# carrier_gateway_id, core_network_arn, egress_only_gateway_id, gateway_id, instance_id, local_gateway_id, nat_gateway_id, network_interface_id, transit_gateway_id, vpc_endpoint_id, vpc_peering_connection_id
resource "aws_route_table" "rt" {
  vpc_id = var.vpc.id

  dynamic "route" {
    for_each = var.routes
    content {
      cidr_block     = route.value.cidr
      nat_gateway_id = route.value.id-type == "nat-gateway-id" ? (route.value.id) : null
      gateway_id     = route.value.id-type == "gateway-id" ? (route.value.id) : null
    }
  }

  tags = merge(var.tags, {
    Name         = var.rt.name
    service      = var.rt.service
    resourcetype = "route-table"
  })
}
