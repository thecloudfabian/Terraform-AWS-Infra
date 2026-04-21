module "vpc" {
  source = "../../modules/vpc"
  cidr   = "10.0.0.0/16"
}

module "security_group" {
  source = "../../modules/security-group"
  vpc_id = module.vpc.vpc_id
}
