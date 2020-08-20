resource "aws_elasticache_replication_group" "redis_cluster" {
  replication_group_id = var.cluster_name
  replication_group_description = var.cluster_description
  node_type = var.node_type
  auth_token = var.password
  port = var.port
  engine_version = var.redis_version

  maintenance_window = var.maintenance_window
  snapshot_window = var.snapshot_window
  snapshot_retention_limit = var.snapshot_retention_limit

  subnet_group_name = aws_elasticache_subnet_group.redis_cluster_subnet_group.name
  security_group_ids = [module.security_group.this_security_group_id]

  automatic_failover_enabled = true
  auto_minor_version_upgrade = true
  at_rest_encryption_enabled = true
  transit_encryption_enabled = true
  apply_immediately = true

  cluster_mode {
    num_node_groups = var.number_of_shards
    replicas_per_node_group = var.replicas_per_shard
  }
}