# Cluster variables
variable "cluster_id" {
  description = "Name of the Redis cluster"
  type = string
}

variable "cluster_description" {
  description = "Description of the Redis cluster"
  type = string
}

variable "node_type" {
  description = "Compute and memory size for each node"
  type = string
}

variable "password" {
  description = "Authentication password"
  type = string
}

variable "redis_version" {
  description = "Redis version to be used on each node"
  type = string
}

variable "port" {
  description = "Port to be used to communicate with the cluster"
  type = number
}

variable "maintenance_window" {
  description = "Weekly time range when maintenance happens"
  type = string
  default = "sun:05:00-sun:07:00"
}

variable "snapshot_window" {
  description = "Daily time range when snapshots are taken"
  type = string
  default = "02:00-04:00"
}

variable "snapshot_retention_limit" {
  description = "Number of days for which ElastiCache will retain snapshots"
  type = number
  default = 7
}

variable "number_of_shards" {
  description = "Number of shards to have in the cluster "
  type = number
}

variable "replicas_per_shard" {
  description = "Number of replicas per shard"
  type = number
}

# Subnet group variables
variable "subnet_group_name" {
  description = "Name of the created subnet group"
  type = string
}

variable "subnet_ids" {
  description = "List of the ids used to create the subnet group"
  type = list(string)
}

# Security group variables
variable "vpc_id" {
  description = "ID of the vpc where the security group will be created"
  type = string
}

variable "security_group_name" {
  description = "Name of the created security group"
  type = string
}

variable "security_groups" {
  description = "List of the security groups able to communicate with the redis cluster"
  type = list(string)
}