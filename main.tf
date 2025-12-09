module "ec2_demo" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  project_name  = var.project_name
}
