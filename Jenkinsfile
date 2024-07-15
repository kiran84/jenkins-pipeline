#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = "us-west-2"
    }
    stages {
        stage("Delete from EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --name my-eks-cluster"
                        sh "kubectl delete -f nginx-deployment.yaml"
                        sh "kubectl delete -f nginx-service.yaml"
                    }
                }
            }
        }
        
    }
}
