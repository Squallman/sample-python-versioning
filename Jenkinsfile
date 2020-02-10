pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'pip --version'
                sh 'virtualenv --version'
            }
        }
    }
}