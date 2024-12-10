resource "aws_customer_gateway" "prisma" {
  bgp_asn    = 65000
  ip_address = var.client_gateway_ip
  type       = "ipsec.1"
  tags = {
    Name = "prisma-client-gateway"
  }
}

resource "aws_vpn_gateway" "vgw" {
  vpc_id = var.vpc_id
  tags = {
    Name = "prisma-vpn-gateway"
  }
}

resource "aws_vpn_connection" "prisma_vpn" {
  customer_gateway_id = aws_customer_gateway.prisma.id
  vpn_gateway_id      = aws_vpn_gateway.vgw.id
  type                = "ipsec.1"
  static_routes_only  = true

  tunnel1_inside_cidr = "169.254.10.0/30"
  tunnel2_inside_cidr = "169.254.11.0/30"

  tags = {
    Name = "prisma-vpn-connection"
  }
}
