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
                bat 'C:/Users/LENOVO/Downloads/terraform_1.9.2_windows_386/terraform.exe init'
            }
        }
        stage('terraform plan') {
            steps {
                bat 'C:/Users/LENOVO/Downloads/terraform_1.9.2_windows_386/terraform.exe plan'
            }
        }
        stage('terraform apply') {
            steps {
                bat 'C:/Users/LENOVO/Downloads/terraform_1.9.2_windows_386/terraform.exe apply -auto-approve' 
            }
        }
    }
   
}
