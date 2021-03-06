resource "aws_ssm_parameter" "redis_cluster_url" {
  name = "redis-cluster-url"
  type = "SecureString"
  key_id = "alias/aws/ssm"
  overwrite = true
  value = "${aws_elasticache_replication_group.redis_cluster.configuration_endpoint_address}:${var.port}"
}
