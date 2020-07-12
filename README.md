# Description

An opinionated Terraform module with sensible defaults to create a single region AWS Redis ElastiCache cluster

# Inputs
## Required
+ `cluster_name`: Name for the Redis cluster
+ `cluster_description`: Description for the Redis cluster
+ `node_type`: Compute and memory size for each node
+ `password`: Password used for authentication between the cluster and clients
+ `redis_version`: Redis version to be used on each node
+ `port`: Port used for communication between clients and the cluster
+ `number_of_shards`: Number of write nodes (shards) in the cluster
+ `replicas_per_shard`: Number of read replicas per shard
+ `subnet_group_name`: Name for the subnet group
+ `subnet_group_description`: Description for the subnet group
+ `subnet_ids`: List of the subnet ids used to create the subnet group
+ `security_group_id`: ID of the security group where the cluster will be placed

## Optional
+ `maintenance_window`: Weekly time range when maintenance happens. Defaults to `sun:05:00-sun:07:00`
+ `snapshot_window`: Daily time range when snapshots are taken. Defaults to `02:00-04:00`
+ `snapshot_retention_window`: Number of days for which ElastiCache will retain snapshots. Defaults to `7`

#  Providers
+ aws

# Contribute

Found a bug or an error? Post it in the 
[issue tracker](https://github.com/bruno-chavez/https://github.com/bruno-chavez/tf-elasticache-redis-cluster/issues).

Want to add an awesome new feature? 
[Fork](https://github.com/bruno-chavez/https://github.com/bruno-chavez/tf-elasticache-redis-cluster/fork) 
this repository, add your feature on a new branch, 
then send a pull request.

# License
The MIT License (MIT)
Copyright (c) 2020 Bruno Chavez