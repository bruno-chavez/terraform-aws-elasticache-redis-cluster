resource "aws_security_group_rule" "ingress_security_group_rule" {
  security_group_id = var.ingress_security_group_id
  description = "${var.cluster_name} access"

  protocol = "tcp"
  type = "egress"
  from_port = var.port
  to_port = var.port

  source_security_group_id = module.security_group.this_security_group_id
}

resource "aws_security_group_rule" "ingress_security_group_rule" {
  security_group_id = var.ingress_security_group_id
  description = "${var.cluster_name} config endpoint access"

  protocol = "tcp"
  type = "egress"
  from_port = var.port + 10000
  to_port = var.port + 10000

  source_security_group_id = module.security_group.this_security_group_id
}