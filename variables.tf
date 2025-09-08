variable "aws_region" {
    type = string
    default = "ca-central-1"
    description = "AWS Region"
}

variable "vpc_name" {
    type = string
    default = "eks-loso-vpc"
    description = "The name of the VPC"
}

variable "vpc_cidr" {
    type = string
    default = ""
    description = "The CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
    type = list(string)
    default = []
    description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidrs" {
    type = list(string)
    default = []
    description = "List of private subnet CIDR blocks"
}

variable "public_subnet_tags" {
    type = map(string)
    default = {}
    description = "Tags to apply to public subnets"
}

variable "private_subnet_tags" {
    type = map(string)
    default = {}
    description = "Tags to apply to private subnets"
}

variable "tags" {
    type = map(string)
    default = {
        "Owner"       = "Pippi",
        "Environment" = "Dev",
        "Project"     = "EKS-Loso"
        Costcenter   = "IT"
    }
    description = "Tags to apply to all resources"
}

variable "project_name" {
    type = string
    default = "EKS-Loso"
    description = "The name of the project"
}

variable "environment" {
    type = string
    default = "Dev"
    description = "Environment name"
}

variable "cluster_name" {
    type = string
    default = "eks-loso-cluster"
    description = "The name of the EKS cluster"
}

variable "eks_cluster_role_name" {
    description = "The name of the IAM role for the EKS cluster"
    type        = string
    default     = "loso-eks-cluster-role"
}

variable "endpoint_private_access" {
  description = "Enable private access to the EKS API server"
  type        = bool
  default     = true     
}

variable "endpoint_public_access" {
  description = "Enable public access to the EKS API server"
  type        = bool
  default     = true     
}

variable "eks_version" {
  description = "The version of the EKS cluster"
  type        = string
  default     = "1.33"
}

variable "eks_worker_role_policy_arns" {
  description = "List of IAM policy ARNs to attach to the EKS worker role"
  type        = list(string)
  default     = [
    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
    "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
  ]
}

variable "node_group_disk_size" {
  description = "Disk size for the EKS node group"
  type        = number
  default     = 20
}

variable "node_group_desired_size" {
  description = "Desired size for the EKS node group"
  type        = number
  default     = 2
}
variable "node_group_min_size" {
  description = "Minimum size for the EKS node group"
  type        = number
  default     = 1    
}
variable "node_group_max_size" {
  description = "Maximum size for the EKS node group"
  type        = number
  default     = 3     
}

variable "node_group_instance_type" {
  description = " Instance type for the EKS node group"
  type        = string
  default     = "t3.small"
}