pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    environment {
        DOCKER_IMAGE = 'yourdockerhubusername/maven-webapp'
    }

    stages {

        // a. Checkout stage
        stage('Checkout') {
            steps {
                git credentialsId: 'GitHub-PAT', branch: 'main', url: 'https://github.com/AShaji23/COMP367_WebApp.git'
            }
        }

        // b. Build Maven project stage
        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package'
            }
        }

        // d. Docker login stage
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo Logging in to Docker Hub...'
                    sh 'docker login -u $DOCKER_USER -p $DOCKER_PASS'
                }
            }
        }

        // e. Docker build stage
        stage('Docker Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        // f. Docker push stage
        stage('Docker Push') {
            steps {
                sh 'docker push $DOCKER_IMAGE'
            }
        }
    }
}
