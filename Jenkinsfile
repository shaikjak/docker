pipeline {
    agent {
        label 'AGENT-1'
    }

    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }

    environment {
        appVersion = ""
        nexusUrl = "NEXUS_URL_HERE"
    }

    parameters {
        booleanParam(name: 'deploy', defaultValue: true, description: 'toggle deploy')
    }

    stages {
        stage('Checkout Code') {
             steps {
                git branch: 'main',
                url: 'https://github.com/shaikjak/Jenkins'
            }
        }

        stage('Read the version') {
            steps {
                script {
                    def packageJson = readJSON file: 'package.json'
                    appVersion = packageJson.version
                    echo "package version is ${appVersion}"
                }
            }
        }

        stage('Install dependencies') {
            steps {
                sh '''
                    npm install
                    ls -lart
                '''
            }
        }

        stage('Build the package') {
            steps {
                sh """
                    zip -q -r backend-${appVersion}.zip . \
                    -x Jenkinsfile \
                    -x backend-${appVersion}.zip
                """
            }
        }

        stage('Sonar Scan') {
            environment {
                SCANNER_HOME = tool 'sonar-6.0'
            }
            steps {
                withSonarQubeEnv('sonar-6.0') {
                    sh "${SCANNER_HOME}/bin/sonar-scanner"
                }
            }
        }

        stage('Quality Gate Check') {
            steps {
                timeout(time: 30, unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }

        // stage('Upload Artifact') {
        //     steps {
        //         script {
        //             nexusArtifactUploader(
        //                 nexusVersion: 'nexus3',
        //                 protocol: 'http',
        //                 nexusUrl: nexusUrl,
        //                 groupId: 'com.expense',
        //                 version: appVersion,
        //                 repository: 'backend',
        //                 credentialsId: 'nexus-auth',
        //                 artifacts: [
        //                     [
        //                         artifactId: 'backend',
        //                         classifier: '',
        //                         file: "backend-${appVersion}.zip",
        //                         type: 'zip'
        //                     ]
        //                 ]
        //             )
        //         }
        //     }
        // }
    }
}
