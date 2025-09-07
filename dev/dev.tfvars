vpc_name   = "eks-loso-dev-vpc"
vpc_cidr   = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.0.0/20", "10.0.16.0/20",]
private_subnet_cidrs = ["10.0.32.0/20", "10.0.48.0/20"]
environment = "dev"
eks_version = "1.33"
node_group_disk_size = 20
node_group_instance_type = "t3.small"
node_group_desired_size = 1
node_group_max_size = 3
node_group_min_size = 1
tags = {
  Project     = "eks-loso-with-vpc-module"
  Environment = "dev"
  Owner       = "Pippi Technologies"
  CostCenter  = "IT"
}