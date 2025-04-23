pipeline {
    agent any

    environment {
        IMAGE_NAME = 'ascdee123/smartcart'
        TAG = 'latest'
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/jeondaehoon/smartCart.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'chmod +x ./mvnw'
                sh './mvnw clean package -DskipTests'
            }
        }

        stage('Build & Push Docker Image') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME:$TAG .'
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                        sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                        sh 'docker push $IMAGE_NAME:$TAG'
                    }
                }
            }
        }

        stage('Deploy to EC2') {
            steps {
                sshagent (credentials: ['ec2-ssh']) {
                    sh 'ssh -o StrictHostKeyChecking=no ubuntu@<EC2-IP> "docker pull $IMAGE_NAME:$TAG && cd /home/ubuntu/smartcart && docker-compose down && docker-compose up -d"'
                }
            }
        }
    }
}
