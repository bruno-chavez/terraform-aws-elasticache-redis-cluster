module "security_group" {
  source = "terraform-aws-modules/security-group/aws"

  vpc_id = var.vpc_id

  name = "${var.cluster_name}-security-group"
  use_name_prefix = false
  description = "redis cluster security group"
  revoke_rules_on_delete = true
}