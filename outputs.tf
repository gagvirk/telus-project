output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_id_az1" {
  value = aws_subnet.public_az1.id
}

output "public_subnet_id_az2" {
  value = aws_subnet.public_az2.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "alb_dns_name" {
  value = aws_lb.my_infra.dns_name
}