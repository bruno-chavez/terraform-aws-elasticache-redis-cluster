resource "aws_elasticache_subnet_group" "redis_cluster_subnet_group" {
  name = var.subnet_group_name
  subnet_ids = var.subnet_ids
}