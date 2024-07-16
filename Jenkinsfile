#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = "us-west-2"
    }
    stages {
        stage("apply") {
            steps {
                script {
                    dir('2-terraform-eks-deployment') {
                        sh "terraform destroy -auto-approve"
                    }
                }
            }
        }
        
    }
}
