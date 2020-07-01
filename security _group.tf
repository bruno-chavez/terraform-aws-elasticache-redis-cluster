resource "aws_security_group" "redis_cluster_security_group" {
  description = "Allows communication between the cluster and other security groups"

  name = var.security_group_name
  vpc_id = var.vpc_id

  ingress {
    from_port = var.port
    to_port = var.port
    protocol = "TCP"
    security_groups = var.security_groups
    description = "Access port"
  }

  ingress {
    from_port = var.port + 10000
    to_port = var.port + 10000
    protocol = "TCP"
    security_groups = var.security_groups
    description = "SSL handshake port"
  }
}