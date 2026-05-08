output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}

output "public_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.example.public_dns
}

output "availability_zone" {
  description = "Availability Zone of the EC2 instance"
  value       = aws_instance.example.availability_zone
}
