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
                    ls -la ${WORKSPACE}
                    source ${WORKSPACE}/penv/bin/activate
                    ./run-install
                    deactivate
                """
            }
        }
        stage ('Run build') {
            steps {
                sh """
                    source ${WORKSPACE}/penv/bin/activate
                    ./run-build
                    deactivate
                """
            }
        }
    }
}