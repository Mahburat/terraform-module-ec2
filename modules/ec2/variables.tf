variable "ami" {
  type    = string
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "name_prefix" {
  type    = string
  default = "demo"
}
