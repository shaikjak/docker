pipeline {
    agent {
        label "AGENT-1"

    }
    environment {
        Greetings = "Hello World"
    }
    parameters {

    }
    options {
        timeout(time: 30 , unit: 'MINUTES')
    }
    stages{
        stage ( 'git clone' ) {
            steps{
                sh " clone the repo"
            }
        }
        stage ( 'build' ) {
            steps{
                sh " build the package"
            }
        }
        stage ( 'artifact' ) {
            steps{
                sh " generate the artifcat"
            }
        }
        stage ( 'docker Image' ) {
            steps{
                sh " build the image"
            }
        }
        stage ( 'deploy' ) {
            steps{
                sh " deply the image"
            }
        }
    }
}
post {
    always{
        success{
        }
        failure{
        }
    }
}