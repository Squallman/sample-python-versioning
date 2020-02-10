pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }
    stages {
        stage ('Unit Dependencies') {
            steps {
                withEnv(["HOME=${env.WORKSPACE}"]) {
                    sh """
                        #!/bin/bash
                        pip install virtualenv
                        virtualenv ${WORKSPACE}/penv
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
                        #!/bin/bash
                        source ${WORKSPACE}/penv/bin/activate
                        ./run-build.sh
                        deactivate
                    """
                }
            }
        }
    }
}