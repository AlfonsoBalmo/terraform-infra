output "vpc_id" {
  value = aws_vpc.prisma_dicio.id
}

output "subnets" {
  value = aws_subnet.public[*].id
}
