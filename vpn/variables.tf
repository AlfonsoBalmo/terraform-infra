variable "vpc_id" {
  description = "VPC ID where the VPN Gateway will be attached"
}

variable "client_gateway_ip" {
  description = "IP address of the client gateway"
  default     = "34.103.72.46"
}

variable "ike_key" {
  description = "IKE pre-shared key"
  default     = "Ain.dx5FIMYK_f5wTt6EoCLT.TrnAS"
}
