variable "vpc_name" {
  description = "Name of the VPC"
  default     = "prisma-dicio"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "172.40.1.0/24"
}

variable "availability_zones" {
  description = "Availability zones for the subnets"
  default     = ["us-east-1a", "us-east-1b"]
}
