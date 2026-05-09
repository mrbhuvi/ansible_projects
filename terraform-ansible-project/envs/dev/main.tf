
module "security_group" {
  source = "../../modules/security-group"

  sg_name = "dev-security-group"
}

module "ec2" {
  source = "../../modules/ec2"

  instance_count =3
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name

  sg_id = module.security_group.sg_id
}