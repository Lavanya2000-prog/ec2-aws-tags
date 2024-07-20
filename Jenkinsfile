pipeline {
    agent any 
    stages {
        stage('checkout') {
            steps {
                git url : 'https://github.com/Lavanya2000-prog/ec2-aws-tags.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform apply -auto-approve' 
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
