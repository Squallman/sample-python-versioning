pipeline {
    agent { dockerfile true }
    stages {
        stage ('Unit Dependencies') {
            steps {
                sh """
                    source bin/activate
                    ./run-install
                    deactivate
                """
            }
        }
        stage ('Run build') {
            steps {
                sh """
                    source bin/activate
                    ./run-build
                    deactivate
                """
            }
        }
    }
}