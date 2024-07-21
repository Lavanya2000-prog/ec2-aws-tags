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
    
    post {
        always {
            // Clean up
            cleanWs()
        }
        
        failure {
            script {
                // Send notifications on failure
                slackSend (
                    channel: '#your-channel',
                    color: '#FF0000',
                    message: "Build ${currentBuild.fullDisplayName} failed. Check Jenkins for details."
                )
            }
        }
        
        success {
            script {
                // Send notifications on success
                slackSend (
                    channel: '#your-channel',
                    color: '#00FF00',
                    message: "Build ${currentBuild.fullDisplayName} completed successfully."
                )
            }
        }
    }
}
