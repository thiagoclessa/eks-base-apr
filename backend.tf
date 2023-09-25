terraform {
  backend "s3" {
    bucket = "vkpr-teste"
    key    = "eks-base-apr/terraform.tfstate"
    region = "us-east-1"
  }
}