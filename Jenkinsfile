#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = "us-west-2"
    }
    stages {
        stage("Delete to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "kubectl delete -f nginx-deployment.yaml"
                        sh "kubectl delete -f nginx-service.yaml"
                    }
                }
            }
        }
        
    }
}
