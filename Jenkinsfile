pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/jpmonzon/myapp'
            }
        }
        stage('Login to Amazon ECR') {
            steps {
                withAWS(region: 'us-west-1', credentials: 'ID-AWS') {
                    script {
                        sh 'aws ecr get-login-password --region us-west-1 | docker login --username AWS --password-stdin 730335639646.dkr.ecr.us-west-1.amazonaws.com'
                    }
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t myapp .'
                    sh 'docker tag myapp 730335639646.dkr.ecr.us-west-1.amazonaws.com/myapp:latest'
                    sh 'docker push 730335639646.dkr.ecr.us-west-1.amazonaws.com/myapp:latest'
                }
            }
        }
        stage('Deploy to AWS') {
            steps {
                withAWS(region: 'us-west-1', credentials: 'ID-AWS') {
                    script {
                        sh 'terraform init'
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}
