pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            additionalBuildArgs  '--build-arg WORKSPACE=${WORKSPACE}'
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