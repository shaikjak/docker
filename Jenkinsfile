pipeline {
    agent {
        label "AGENT-1"

    }
    enviroment {
        Greeetings = "Hello World"
    }
    parameters {

    }
    options {
        timeout(time: 30 , unit: MINUTES)
    }
    stages{
        stage 'git clone' {
            sh " clone the repo"

        }
        stage 'build' {
            sh " build the package"

        }
        stage 'artifact' {
            sh " generate the artifcat"

        }
        stage 'docker Image' {
            sh " build the image"

        }
        stage 'deploy' {
            sh " deply the image"

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