locals {
  nameprefix = "${var.project_name}-${var.environment}"
  cluster_name = "${var.cluster_name}-${var.environment}"
  public_subnet_tags = {
  "kubernetes.io/role/elb" = "1"
  "kubernetes.io/cluster/${var.cluster_name}-${var.environment}" = "shared"
}
 private_subnet_tags = {
  "kubernetes.io/role/internal-elb" = "1"
  "kubernetes.io/cluster/${var.cluster_name}-${var.environment}" = "shared"
}
}