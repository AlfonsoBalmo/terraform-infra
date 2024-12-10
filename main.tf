module "vpc" {
  source = "./vpc"
}

module "vpn" {
  source = "./vpn"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source        = "./ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnets[0]
}
