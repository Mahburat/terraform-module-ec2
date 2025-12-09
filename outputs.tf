output "ec2_public_ip" {
  description = "Public IP of EC2"
  value       = module.ec2_demo.public_ip
}

output "ec2_id" {
  description = "EC2 Instance ID"
  value       = module.ec2_demo.instance_id
}
