variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance size"
  type        = string
  default     = "t2.micro"
}

variable "project_name" {
  description = "Tag for resources"
  type        = string
  default     = "tf-demo"
}
