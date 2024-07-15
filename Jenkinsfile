#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = "us-west-2"
    }
    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform init"
                        sh "terraform destroy -auto-approve"
                    }
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --name my-eks-cluster"
                        sh "kubectl apply -f nginx-deployment.yaml"
                        sh "kubectl apply -f nginx-service.yaml"
                    }
                }
            }
        }
    }
}
