pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('AKIAZI2LDEWXCFEYF6MW')
        AWS_SECRET_ACCESS_KEY = credentials('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')
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Lavanya2000-prog/ec2-aws-tags.git'
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    def result = bat(script: 'terraform init', returnStatus: true)
                    if (result != 0) {
                        error "Terraform init failed"
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    def result = bat(script: 'terraform apply -auto-approve', returnStatus: true)
                    if (result != 0) {
                        error "Terraform apply failed"
                    }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
