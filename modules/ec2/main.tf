resource "aws_security_group" "demo_sg" {
  name        = "${var.project_name}-sg"
  description = "Allow SSH"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "demo" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 us-east-2
  instance_type = var.instance_type
  security_groups = [aws_security_group.demo_sg.name]

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
