terraform {
  backend "s3" {
    bucket = "jenkins-eks-cluster-test"
    region = "us-west-2"
    key = "eks/terraform.tfstate"
  }
}
