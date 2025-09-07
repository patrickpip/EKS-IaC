vpc_name   = "eks-loso-prod-vpc"
vpc_cidr   = "192.168.0.0/16"
public_subnet_cidrs  = ["192.168.0.0/20", "192.168.16.0/20" , "192.168.32.0/20"]
private_subnet_cidrs = ["192.168.48.0/20", "192.168.64.0/20", "192.168.80.0/20"]
environment = "prod"
eks_version = "1.33"
node_group_disk_size = 20
node_group_instance_type = "t3.small"
node_group_desired_size = 1
node_group_max_size = 3
node_group_min_size = 1
tags = {
  Project     = "eks-loso-with-vpc-module"
  Environment = "prod"
  Owner       = "Pippi Technologies"
  CostCenter  = "IT"
}