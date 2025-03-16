pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    environment {
        // Set your Docker image name and Docker Hub repo
        DOCKER_IMAGE = 'yourdockerhubusername/maven-webapp'
    }

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'GitHub-PAT', branch: 'main', url: 'https://github.com/AShaji23/COMP367_WebApp.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo Logging in to Docker Hub...'
                    sh 'docker login -u $DOCKER_USER -p $DOCKER_PASS'
                }
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push $DOCKER_IMAGE'
            }
        }

        stage('Deploy (Optional)') {
            steps {
                echo "Deploy step is optional here since Docker image is pushed."
            }
        }
    }
}
