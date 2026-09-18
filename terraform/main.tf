module "network" {
  source = "./modules/network"

  project_name         = var.project_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "security" {
  source = "./modules/security"

  project_name    = var.project_name
  vpc_id          = module.network.vpc_id
  vpc_cidr        = module.network.vpc_cidr
  admin_cidr      = var.admin_cidr
  public_key_path = var.public_key_path
}

module "compute" {
  source = "./modules/compute"

  project_name      = var.project_name
  instance_type     = var.instance_type
  key_name          = module.security.key_name
  public_subnet_id  = module.network.public_subnet_ids[0]
  private_subnet_id = module.network.private_subnet_ids[0]
  bastion_sg_id     = module.security.bastion_sg_id
  app_sg_id         = module.security.app_sg_id
}
