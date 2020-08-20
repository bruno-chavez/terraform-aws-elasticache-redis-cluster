module "security_group" {
  source = "terraform-aws-modules/security-group/aws"

  vpc_id = var.vpc_id

  name = "${var.cluster_name}-security-group"
  use_name_prefix = false
  description = "elasticache cluster security group"
  revoke_rules_on_delete = true

  ingress_with_source_security_group_id = [
    {
      from_port = var.port
      to_port = var.port
      protocol = "tcp"
      description = "grants access"
      source_security_group_id = var.ingress_security_group_id
    },
    {
      from_port = var.port + 10000
      to_port = var.port + 10000
      protocol = "tcp"
      description = "grants access to the cluster config endpoint"
      source_security_group_id = var.ingress_security_group_id
    }
  ]
}