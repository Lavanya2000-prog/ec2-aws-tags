pipeline {
    agent any
    
    environment {
        // Define environment variables
        AWS_REGION = 'eu-north-1' // Change to your AWS region
    }
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Lavanya2000-prog/ec2-aws-tags.git'
            }
        }
        
        stage('Terraform init') {
            steps {
                script {
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws']]) {
                        bat 'terraform init'
                    }
                }
            }
        }
        
        stage('Terraform plan') {
            steps {
                script {
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws']]) {
                        bat 'terraform plan'
                    }
                }
            }
        }
        
        stage('Terraform apply') {
            steps {
                script {
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws']]) {
                        bat 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}
