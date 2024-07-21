pipeline {
    agent any 
    stages {
        stage('checkout') {
            steps {
                git url : 'https://github.com/Lavanya2000-prog/ec2-aws-tags.git', branch:'master'
            }
        }
        stage('terraform init') {
            steps {
                bat 'terraform init'
            }
        }
        stage('terraform apply') {
            steps {
                bat 'terraform apply -auto-approve' 
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
