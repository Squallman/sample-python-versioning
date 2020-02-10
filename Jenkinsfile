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
                withEnv(["HOME=${env.WORKSPACE}"]) {
                    sh """
                        pip install virtualenv
                        virtualenv ${WORKSPACE}/penv
                        ls -la ${WORKSPACE}/penv
                        ls -la ${WORKSPACE}/penv/bin
                        source ${WORKSPACE}/penv/bin/activate
                        ./run-install.sh
                        deactivate
                    """
                }
            }
        }
        stage ('Run build') {
            steps {
                withEnv(["HOME=${env.WORKSPACE}"]) {
                    sh """
                        source ${WORKSPACE}/penv/bin/activate
                        ./run-build.sh
                        deactivate
                    """
                }
            }
        }
    }
}