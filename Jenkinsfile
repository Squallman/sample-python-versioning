pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            additionalBuildArgs 'test2'
            args 'test'
        }
    }
    stages {
        stage ('Unit Dependencies') {
            steps {
                sh """
                    pwd
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