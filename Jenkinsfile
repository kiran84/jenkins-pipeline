#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = "us-west-2"
    }
    stages {
        stage("Initialize ") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform init"
                    }
                }
            }
        }
        stage("Validate") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform validate"
                    }
                }
            }
        }
        stage("plan") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform plan"
                    }
                }
            }
        }
        stage("apply") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform apply -auto-approve"
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
