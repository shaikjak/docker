pipeline {
    agent any

    stages {
        stage ('SCM') {
            steps{
                echo "clone the repository"

            }
        }
        stage ('build') {
            steps{
                echo "build the code"

            }
        }
        stage ('sonar-scan') {
            steps{
                echo "scan the code"

            }
        }
        stage ('docker-image') {
            steps{
                echo "create the image"

            }
        }
        stage ('deploy'){
            steps{
                echo "deploy in the kubernaties"

            }
        }
    }
}