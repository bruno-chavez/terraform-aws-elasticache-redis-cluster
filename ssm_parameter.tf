resource "aws_ssm_parameter" "cache_url" {
  name = "cache-url"
  type = "SecureString"
  key_id = "alias/aws/ssm"
  value = "${aws_elasticache_replication_group.redis_cluster.configuration_endpoint_address}:${var.port}"
}
