# Cluster variables
variable "cluster_name" {
  description = "Name for the Redis cluster"
  type = string
}

variable "cluster_description" {
  description = "Description for the Redis cluster"
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

variable "port" {
  description = "Port used for communication between clients and the cluster"
  type = number
}

variable "redis_version" {
  description = "Redis version user for the cluster, supports only Redis 5.0.x"
  type = string
}

variable "enable_transit_encryption" {
  description = "Enables communication with the cluster through SSL"
  type = bool
  default = true
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
  description = "Number of write nodes (shards) in the cluster"
  type = number
}

variable "replicas_per_shard" {
  description = "Number of read replicas per shard"
  type = number
}

# Subnet group variables
variable "subnet_group_name" {
  description = "Name for the subnet group"
  type = string
}

variable "subnet_group_description" {
  description = "Description for the subnet group"
  type = string
}

variable "subnet_ids" {
  description = "List of the subnet ids used to create the subnet group"
  type = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC where the security group will be placed"
  type = string
}
