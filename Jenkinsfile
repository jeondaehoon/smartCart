pipeline {
    agent any

    environment {
        IMAGE_NAME = 'ascdee123/smartcart'
        TAG = 'latest'
        EC2_USER = 'ubuntu'
        EC2_HOST = '3.106.239.185'
        CONTAINER_NAME = 'smartcart'
        PORT = '8080'
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
                sshagent(credentials: ['ec2-ssh']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no $EC2_USER@$EC2_HOST "
                            docker pull $IMAGE_NAME:$TAG &&
                            docker stop $CONTAINER_NAME || true &&
                            docker rm $CONTAINER_NAME || true &&
                            docker run -d -p $PORT:$PORT --name $CONTAINER_NAME $IMAGE_NAME:$TAG
                        "
                    '''
                }
            }
        }
    }
}
