# Description

An opinionated Terraform module with sensible defaults to create a single region AWS Redis ElastiCache cluster inside a previously created network

# Generated Resources

+ A ElastiCache Redis Cluster
+ A subnet group for the cluster
+ A security group for the cluster
+ A SSM Parameter with the cluster configuration url

# Required Providers

+ `aws`

# Inputs
### Required
+ `cluster_name (string)`: Name for the Redis cluster
+ `cluster_description (string)`: Description for the Redis cluster
+ `node_type (string)`: Compute and memory size for each node
+ `password (string)`: Password used for authentication between the cluster and clients
+ `redis_version (string)`: Redis version to be used on each node
+ `port (number)`: Port used for communication between clients and the cluster
+ `number_of_shards (number)`: Number of write nodes (shards) in the cluster
+ `replicas_per_shard (number)`: Number of read replicas per shard
+ `subnet_group_name (string)`: Name for the subnet group
+ `subnet_group_description (string)`: Description for the subnet group
+ `subnet_ids (list(string))`: List of the subnet ids used to create the subnet group
+ `vpc_id (string)`: ID of the VPC where the cluster will be placed

### Optional
+ `enable_transit_encryption`: Enables communication with the cluster through SSL
+ `maintenance_window (string)`: Weekly time range when maintenance happens. Defaults to `sun:05:00-sun:07:00`
+ `snapshot_window (string)`: Daily time range when snapshots are taken. Defaults to `02:00-04:00`
+ `snapshot_retention_window (string)`: Number of days for which ElastiCache will retain snapshots. Defaults to `7`

# Examples

Examples of how to use the module can be found in the `examples` directory

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