pipeline {
    agent any 
    stages {
        stage('checkout') {
            steps {
                git 'https://github.com/Lavanya2000-prog/ec2-aws-tags.git'
            }
        }
        stage('terraform init') {
            steps {
                bat 'terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                bat 'terraform plan'
            }
        }
        stage('terraform apply') {
            steps {
                bat 'terraform apply -auto-approve' 
            }
        }
    }
   
}
