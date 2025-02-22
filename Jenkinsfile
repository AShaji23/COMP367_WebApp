pipeline {
    agent any
    
    tools {
		maven 'Maven'
	}
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'GitHub-PAT', branch: 'main', url: 'https://github.com/AShaji23/COMP367_WebApp.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying the Web App..."
            }
        }
    }
}
