terraform {
  backend "s3" {
    bucket = "jenkins-eks-cluster-test"
    region = "us-west-2"
    key = "jenkins-server/terraform.tfstate"
  }
}
