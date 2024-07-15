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
       
    }
}
