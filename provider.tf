provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

provider "kubernetes" {
  source  = "hashicorp/kubernetes"
  version = "~> 2.19.0"
  host                   = module.cluster.cluster_endpoint
  cluster_ca_certificate = module.cluster.cluster_certificate_authority_data
  token                  = module.cluster.kubeconfig_token
}
