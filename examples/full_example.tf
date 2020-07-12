data "aws_vpc" "vpc" {
  tags = {
    Name = "vpc"
  }
}

data "aws_subnet_ids" "subnets" {
  vpc_id = data.aws_vpc.vpc.id
}

data "aws_security_group" "ecs_security_group" {
  tags = {
    Name = "ecs-security-group"
  }
}

data "aws_security_group" "sg" {
  name = "redis-sg"
}

data "aws_ssm_parameter" "redis_cluster_password" {
  name = "redis-cluster-password"
}

module "redis_cluster" {
  source = "github.com/bruno-chavez/tf-elasticache-redis-cluster"

  cluster_name = "cache-cluster"
  cluster_description = "Redis cluster used for pub-sub"
  node_type = "cache.r5.large"
  password = data.aws_ssm_parameter.redis_cluster_password.value
  port = 6379
  redis_version = "5.0.6"

  number_of_shards = 4
  replicas_per_shard = 3

  subnet_group_name = "redis-cluster-subnet-group"
  subnet_group_description = "Subnet group for the redis cluster"
  subnet_ids = data.aws_subnet_ids.subnets.ids

  security_group_id = data.aws_security_group.sg.id

  maintenance_window = "sat:02:00-sat:04:00"
  snapshot_window = "05:00-06:00"
  snapshot_retention_limit = 14
}
