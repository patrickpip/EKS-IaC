terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket         = "pippitech-terraform-state-bucket"
    region         = "ca-central-1"
    use_lockfile = true
  }
}