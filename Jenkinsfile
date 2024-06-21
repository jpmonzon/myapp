pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/tu-usuario/myapp.git'
            }
        }
        stage('Build') {
            steps {
                sh 'echo "Building the application..."'
                // Agrega aquí tus comandos de construcción, por ejemplo:
                // sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
                // Agrega aquí tus comandos de pruebas, por ejemplo:
                // sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying the application..."'
                // Agrega aquí tus comandos de despliegue, por ejemplo:
                // sh 'npm run deploy'
            }
        }
    }
}
